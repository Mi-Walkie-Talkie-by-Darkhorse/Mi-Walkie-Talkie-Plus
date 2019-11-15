package com.mi.mimsgsdk.upload;

import android.content.Context;
import android.text.TextUtils;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.ksyun.ks3.exception.a;
import com.ksyun.ks3.model.a.b;
import com.ksyun.ks3.model.acl.CannedAccessControlList;
import com.ksyun.ks3.model.d;
import com.ksyun.ks3.services.a.f;
import com.ksyun.ks3.services.c;
import com.ksyun.ks3.services.e;
import com.ksyun.ks3.services.h;
import com.ksyun.ks3.services.request.CompleteMultipartUploadRequest;
import com.ksyun.ks3.services.request.InitiateMultipartUploadRequest;
import com.ksyun.ks3.services.request.ListPartsRequest;
import com.ksyun.ks3.services.request.PutObjectRequest;
import com.ksyun.ks3.services.request.UploadPartRequest;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.proto.BCKS3.FileInfo;
import com.mi.mimsgsdk.utils.GlobalData;
import java.io.File;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.Header;

public class Ks3FileUploader {
    public static final String AccessControl_Private = "private";
    public static final String AccessControl_PublicRead = "public-read";
    public static final String AccessControl_PublicReadWrite = "public-read-write";
    public static final int FAILURE_PROGRESS = -1;
    public static final String Ks3FileHost = "http://mix.chat.mi.com";
    public static final long LARGE_FILE_SIZE = 5242880;
    private static final long LARGE_PAGE_SIZE = 5242880;
    public static final long MULTI_UPLOAD_THREADHOLD = 1048576;
    public static long PART_SIZE = SMALL_PAGE_SIZE;
    private static final long SMALL_PAGE_SIZE = 512000;
    /* access modifiers changed from: private */
    public static final String TAG = Ks3FileUploader.class.getName();
    public static final ConcurrentHashMap<Long, FileInfo> sFileInfoMap = new ConcurrentHashMap<>();
    public static final ConcurrentHashMap<Long, Integer> sFileUploaderProgress = new ConcurrentHashMap<>();
    public static final ConcurrentHashMap<Long, b> sInitiateMultipartUploadResultMap = new ConcurrentHashMap<>();
    public static final ConcurrentHashMap<Long, e> sKs3ClientMap = new ConcurrentHashMap<>();
    public static final ConcurrentHashMap<Long, String> sKs3ClientTokenMap = new ConcurrentHashMap<>();
    /* access modifiers changed from: private */
    public String authDate;
    private Attachment mAtt;
    private String mBucketName = "";
    private e mKs3Client;
    /* access modifiers changed from: private */
    public CannedAccessControlList mList = CannedAccessControlList.PublicRead;
    private long mMsgId;
    /* access modifiers changed from: private */
    public String mObjId = "";
    /* access modifiers changed from: private */
    public String mToken;
    /* access modifiers changed from: private */
    public UploadCallBack mUploadCallBack;
    private int type;

    public Ks3FileUploader(Attachment attachment, String str, String str2, String str3, long j, String str4, UploadCallBack uploadCallBack, String str5, int i) {
        this.mAtt = attachment;
        this.mBucketName = str;
        this.mObjId = str2;
        this.mMsgId = j;
        this.mToken = str4;
        this.mList = generateObjectAcl(str3);
        this.mUploadCallBack = uploadCallBack;
        this.authDate = str5;
        this.type = i;
    }

    /* access modifiers changed from: private */
    public e getDefaultClient(Context context) {
        if (context == null) {
            ClientLog.d(TAG, "getDefaultCleint context  == null");
        }
        if (this.mKs3Client == null) {
            if (sKs3ClientMap.contains(Long.valueOf(this.mMsgId))) {
                this.mKs3Client = (e) sKs3ClientMap.get(Long.valueOf(this.mMsgId));
            } else {
                this.mKs3Client = new e(new h() {
                    public c onCalculateAuthWithServerDate(String str, String str2, String str3, String str4, String str5, String str6) {
                        return new c(Ks3FileUploader.this.authDate, Ks3FileUploader.this.mToken);
                    }
                }, context);
                this.mKs3Client.a("chat.mi.com");
            }
            sKs3ClientMap.put(Long.valueOf(this.mMsgId), this.mKs3Client);
        }
        return this.mKs3Client;
    }

    public CannedAccessControlList generateObjectAcl(String str) {
        if (TextUtils.isEmpty(str)) {
            return CannedAccessControlList.PublicRead;
        }
        if (str.equalsIgnoreCase("private")) {
            return CannedAccessControlList.Private;
        }
        if (str.equalsIgnoreCase(AccessControl_PublicReadWrite)) {
            return CannedAccessControlList.PublicReadWrite;
        }
        return CannedAccessControlList.PublicRead;
    }

    public boolean startUpload(Context context) {
        if (this.mAtt != null && !this.mAtt.isLocalPathEmpty()) {
            File file = new File(this.mAtt.getLocalPath());
            if (file.exists() && file.isFile() && file.length() != 0) {
                if (this.mAtt.getFileSize() >= 5242880) {
                    PART_SIZE = 5242880;
                } else {
                    PART_SIZE = SMALL_PAGE_SIZE;
                }
                ClientLog.v(TAG, "Ks3FileUploader PART_SIZE=" + PART_SIZE);
                if (this.mAtt.getFileSize() >= 1048576) {
                    doMultipartUpload(this.mBucketName, this.mAtt, getDefaultClient(context), this.type, context);
                } else {
                    doSingleUpload(this.mBucketName, this.mAtt, getDefaultClient(context));
                }
                return true;
            } else if (this.mUploadCallBack == null) {
                return false;
            } else {
                this.mUploadCallBack.onPostExecute(false, "upload error,file not found or size of file is 0", getResourceId());
                return false;
            }
        } else if (this.mUploadCallBack == null) {
            return false;
        } else {
            this.mUploadCallBack.onPostExecute(false, "upload error,local path error", getResourceId());
            return false;
        }
    }

    private void doSingleUpload(final String str, final Attachment attachment, final e eVar) {
        if (eVar == null || attachment == null || attachment.isLocalPathEmpty() || !new File(attachment.getLocalPath()).exists()) {
            ClientLog.v(TAG, "failed to upload att because there is no res file or no client");
            return;
        }
        ClientLog.v(TAG, "upload bucketName = " + str + " objectId = " + this.mObjId);
        if (GlobalData.globalUIHandler == null) {
            ClientLog.d(TAG, "GolbalData handler  == null ");
        } else {
            GlobalData.globalUIHandler.post(new Runnable() {
                public void run() {
                    final PutObjectRequest putObjectRequest = new PutObjectRequest(str, Ks3FileUploader.this.mObjId, new File(attachment.getLocalPath()));
                    putObjectRequest.a(Ks3FileUploader.this.mList);
                    System.currentTimeMillis();
                    eVar.a(putObjectRequest, (com.ksyun.ks3.services.a.e) new com.ksyun.ks3.services.a.e() {
                        public void onTaskProgress(double d) {
                            if (Ks3FileUploader.this.isAborted()) {
                                putObjectRequest.p();
                            } else if (Ks3FileUploader.this.mUploadCallBack != null) {
                                Ks3FileUploader.this.mUploadCallBack.onTaskProgress(d);
                            }
                        }

                        public void onTaskSuccess(int i, Header[] headerArr) {
                            if (Ks3FileUploader.this.isAborted()) {
                                putObjectRequest.p();
                                return;
                            }
                            Ks3FileUploader.this.onUploadFinished(true, attachment.getUrl());
                            ClientLog.v(Ks3FileUploader.TAG, "Upload file success, att url is " + attachment.getUrl());
                            if (Ks3FileUploader.this.mUploadCallBack != null) {
                                Ks3FileUploader.this.mUploadCallBack.onTaskSuccess(i, headerArr);
                            }
                        }

                        public void onTaskStart() {
                            if (Ks3FileUploader.this.mUploadCallBack != null) {
                                Ks3FileUploader.this.mUploadCallBack.onTaskStart();
                            }
                        }

                        public void onTaskFinish() {
                        }

                        public void onTaskCancel() {
                            if (Ks3FileUploader.this.mUploadCallBack != null) {
                                Ks3FileUploader.this.mUploadCallBack.onTaskCancel();
                            }
                        }

                        public void onTaskFailure(int i, a aVar, Header[] headerArr, String str, Throwable th) {
                            ClientLog.w(Ks3FileUploader.TAG, "onTaskFailure " + (th != null ? th.getMessage() : ""));
                            if (Ks3FileUploader.this.isAborted()) {
                                putObjectRequest.p();
                                return;
                            }
                            Ks3FileUploader.this.onUploadFinished(false, str);
                            if (Ks3FileUploader.this.mUploadCallBack != null) {
                                Ks3FileUploader.this.mUploadCallBack.onTaskFailure(i, aVar, headerArr, str, th);
                            }
                        }
                    });
                }
            });
        }
    }

    private void doMultipartUpload(String str, Attachment attachment, e eVar, int i, Context context) {
        if (sInitiateMultipartUploadResultMap.containsKey(Long.valueOf(this.mMsgId))) {
            b bVar = (b) sInitiateMultipartUploadResultMap.get(Long.valueOf(this.mMsgId));
            UploadPartRequestFactory uploadPartRequestFactory = new UploadPartRequestFactory(bVar.a(), bVar.b(), bVar.c(), new File(attachment.getLocalPath()), PART_SIZE);
            ListPartsRequest listPartsRequest = new ListPartsRequest(uploadPartRequestFactory.getBucketName(), uploadPartRequestFactory.getObjectKey(), uploadPartRequestFactory.getUploadId());
            this.mBucketName = uploadPartRequestFactory.getBucketName();
            this.mObjId = uploadPartRequestFactory.getObjectKey();
            listParts(listPartsRequest, attachment, true, uploadPartRequestFactory, i, context);
            return;
        }
        InitiateMultipartUploadRequest initiateMultipartUploadRequest = new InitiateMultipartUploadRequest(str, this.mObjId);
        initiateMultipartUploadRequest.a(this.mList);
        initiateMultipartUpload(initiateMultipartUploadRequest, attachment, eVar, i, context);
    }

    private void initiateMultipartUpload(InitiateMultipartUploadRequest initiateMultipartUploadRequest, Attachment attachment, e eVar, int i, Context context) {
        final InitiateMultipartUploadRequest initiateMultipartUploadRequest2 = initiateMultipartUploadRequest;
        final e eVar2 = eVar;
        final Attachment attachment2 = attachment;
        final Context context2 = context;
        GlobalData.globalUIHandler.post(new Runnable() {
            public void run() {
                initiateMultipartUploadRequest2.a(Ks3FileUploader.this.mList);
                System.currentTimeMillis();
                eVar2.a(initiateMultipartUploadRequest2, (com.ksyun.ks3.services.a.b) new com.ksyun.ks3.services.a.b() {
                    public void onSuccess(int i, Header[] headerArr, b bVar) {
                        Ks3FileUploader.this.beginMultiUpload(bVar, attachment2, context2);
                    }

                    public void onFailure(int i, a aVar, Header[] headerArr, String str, Throwable th) {
                        if (Ks3FileUploader.this.mUploadCallBack != null) {
                            Ks3FileUploader.this.mUploadCallBack.onFailure(i, headerArr, str.getBytes(), th);
                        }
                        ClientLog.v(Ks3FileUploader.TAG, "sliceFile error:" + aVar.a() + Token.SEPARATOR + aVar.b() + Token.SEPARATOR + attachment2.getLocalPath());
                    }
                });
            }
        });
    }

    /* access modifiers changed from: private */
    public void beginMultiUpload(b bVar, Attachment attachment, Context context) {
        sInitiateMultipartUploadResultMap.put(Long.valueOf(this.mMsgId), bVar);
        uploadpart(new UploadPartRequestFactory(bVar.a(), bVar.b(), bVar.c(), new File(attachment.getLocalPath()), PART_SIZE), attachment, context);
    }

    /* access modifiers changed from: private */
    public void uploadpart(final UploadPartRequestFactory uploadPartRequestFactory, final Attachment attachment, final Context context) {
        if (uploadPartRequestFactory != null) {
            if (uploadPartRequestFactory.hasMoreRequests()) {
                GlobalData.globalUIHandler.post(new Runnable() {
                    public void run() {
                        e access$900 = Ks3FileUploader.this.getDefaultClient(context);
                        final UploadPartRequest nextUploadPartRequest = uploadPartRequestFactory.getNextUploadPartRequest();
                        System.currentTimeMillis();
                        ClientLog.v(Ks3FileUploader.TAG, "upload upload part=" + nextUploadPartRequest.toString());
                        access$900.a(nextUploadPartRequest, (f) new f() {
                            double progressInFile = 0.0d;

                            public void onTaskProgress(double d) {
                                if (Ks3FileUploader.this.isAborted()) {
                                    nextUploadPartRequest.p();
                                    return;
                                }
                                this.progressInFile = Double.valueOf(nextUploadPartRequest.q().length() > 0 ? ((((double) (((long) ((d / 100.0d) * ((double) nextUploadPartRequest.a))) + uploadPartRequestFactory.getUploadedSize())) * 1.0d) / ((double) nextUploadPartRequest.q().length())) * 100.0d : -1.0d).doubleValue();
                                if (Ks3FileUploader.this.mUploadCallBack != null) {
                                    Ks3FileUploader.this.mUploadCallBack.onTaskProgress(this.progressInFile);
                                }
                            }

                            public void onSuccess(int i, Header[] headerArr, d dVar) {
                                if (Ks3FileUploader.this.isAborted()) {
                                    nextUploadPartRequest.p();
                                } else {
                                    Ks3FileUploader.this.uploadpart(uploadPartRequestFactory, attachment, context);
                                }
                            }

                            public void onFailure(int i, a aVar, Header[] headerArr, String str, Throwable th) {
                                if (Ks3FileUploader.this.mUploadCallBack != null) {
                                    Ks3FileUploader.this.mUploadCallBack.onFailure(i, headerArr, str.getBytes(), th);
                                }
                            }
                        });
                    }
                });
                return;
            }
            listParts(new ListPartsRequest(uploadPartRequestFactory.getBucketName(), uploadPartRequestFactory.getObjectKey(), uploadPartRequestFactory.getUploadId()), attachment, false, null, this.type, context);
        }
    }

    private void listParts(ListPartsRequest listPartsRequest, Attachment attachment, boolean z, UploadPartRequestFactory uploadPartRequestFactory, int i, Context context) {
        final Context context2 = context;
        final ListPartsRequest listPartsRequest2 = listPartsRequest;
        final boolean z2 = z;
        final UploadPartRequestFactory uploadPartRequestFactory2 = uploadPartRequestFactory;
        final Attachment attachment2 = attachment;
        GlobalData.globalUIHandler.post(new Runnable() {
            public void run() {
                Ks3FileUploader.this.getDefaultClient(context2).a(listPartsRequest2, (com.ksyun.ks3.services.a.d) new com.ksyun.ks3.services.a.d() {
                    public void onSuccess(int i, Header[] headerArr, com.ksyun.ks3.model.a.c cVar) {
                        if (Ks3FileUploader.this.isAborted()) {
                            listPartsRequest2.p();
                        } else if (!z2 || uploadPartRequestFactory2 == null) {
                            Ks3FileUploader.this.completeUploadPart(new CompleteMultipartUploadRequest(cVar), attachment2, context2);
                        } else if (cVar.d() != null) {
                            uploadPartRequestFactory2.setHasUploadPart(cVar.d().size());
                            Ks3FileUploader.this.uploadpart(uploadPartRequestFactory2, attachment2, context2);
                        }
                    }

                    public void onFailure(int i, a aVar, Header[] headerArr, String str, Throwable th) {
                        if (Ks3FileUploader.this.mUploadCallBack != null) {
                            Ks3FileUploader.this.mUploadCallBack.onFailure(i, headerArr, str.getBytes(), th);
                        }
                    }
                });
            }
        });
    }

    /* access modifiers changed from: private */
    public void completeUploadPart(final CompleteMultipartUploadRequest completeMultipartUploadRequest, final Attachment attachment, final Context context) {
        GlobalData.globalUIHandler.post(new Runnable() {
            public void run() {
                Ks3FileUploader.this.getDefaultClient(context).a(completeMultipartUploadRequest, (com.ksyun.ks3.services.a.a) new com.ksyun.ks3.services.a.a() {
                    public void onSuccess(int i, Header[] headerArr, com.ksyun.ks3.model.a.a aVar) {
                        Ks3FileUploader.this.onUploadFinished(true, attachment.getUrl());
                        if (Ks3FileUploader.this.mUploadCallBack != null) {
                            Ks3FileUploader.this.mUploadCallBack.onTaskSuccess(i, headerArr, aVar);
                        }
                    }

                    public void onFailure(int i, a aVar, Header[] headerArr, String str, Throwable th) {
                        Ks3FileUploader.this.onUploadFinished(false, str);
                        if (Ks3FileUploader.this.mUploadCallBack != null) {
                            Ks3FileUploader.this.mUploadCallBack.onFailure(i, headerArr, str.getBytes(), th);
                        }
                    }
                });
            }
        });
    }

    /* access modifiers changed from: private */
    public void onUploadFinished(boolean z, String str) {
        if (sKs3ClientMap.containsKey(Long.valueOf(this.mMsgId)) && this.mUploadCallBack != null) {
            this.mUploadCallBack.onPostExecute(z, str, getResourceId());
        }
        if (this.mAtt != null && sFileInfoMap.containsKey(Long.valueOf(this.mAtt.getAttId()))) {
            sFileInfoMap.remove(Long.valueOf(this.mAtt.getAttId()));
        }
        if (sInitiateMultipartUploadResultMap.containsKey(Long.valueOf(this.mMsgId)) && z) {
            sInitiateMultipartUploadResultMap.remove(Long.valueOf(this.mMsgId));
        }
    }

    /* access modifiers changed from: private */
    public boolean isAborted() {
        return !sKs3ClientMap.containsKey(Long.valueOf(this.mMsgId));
    }

    public String getResourceId() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Ks3FileHost).append("/").append(this.mObjId);
        return stringBuffer.toString();
    }
}
