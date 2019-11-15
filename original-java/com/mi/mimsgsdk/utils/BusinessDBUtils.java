package com.mi.mimsgsdk.utils;

import android.database.Cursor;
import android.support.annotation.NonNull;
import android.util.Pair;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.milinkforgame.sdk.session.ResponseListener;
import com.mi.mimsgsdk.controller.MessageController;
import com.mi.mimsgsdk.database.GroupMessageDao;
import com.mi.mimsgsdk.database.SingleMessageDao;
import com.mi.mimsgsdk.database.pojo.ChatMessage;
import com.mi.mimsgsdk.proto.MiMsgProto.PullOldGroupMsgResponse;
import com.mi.mimsgsdk.proto.MiMsgProto.PullOldUserMsgResponse;
import com.mi.mimsgsdk.service.aidl.MiMessage;

public class BusinessDBUtils {
    /* access modifiers changed from: private */
    public static final String TAG = BusinessDBUtils.class.getSimpleName();
    private static volatile Pair<String, Long> userMaxSingleChatMsgSeq;
    private static volatile boolean userMaxSingleChatMsgSeqExpired = true;

    public static void insertUserRecord(@NonNull final MiMessage miMessage) {
        long singleMaxMsgSeq = getSingleMaxMsgSeq();
        long j = miMessage.msgSeq;
        ClientLog.d(TAG, "maxMsgSeq:" + singleMaxMsgSeq + " msgSeq" + j);
        if (singleMaxMsgSeq == 0 || j == singleMaxMsgSeq + 1) {
            insertUserRecordDb(miMessage);
        } else if (j > singleMaxMsgSeq) {
            MessageController.getInstance().pullOldUserMessage(j, Math.min((int) ((j - singleMaxMsgSeq) - 1), MessageController.getInstance().getSyncLimit()), new ResponseListener() {
                public void onDataSendSuccess(int i, PacketData packetData) {
                    try {
                        PullOldUserMsgResponse parseFrom = PullOldUserMsgResponse.parseFrom(packetData.getData());
                        if (parseFrom != null) {
                            ClientLog.v(BusinessDBUtils.TAG, "onPullOldUserMessageResponse messageResponse=" + parseFrom.toString());
                            int msgsCount = parseFrom.getMsgsCount();
                            for (int i2 = 0; i2 < msgsCount; i2++) {
                                MiMessage parseMessage = MessageController.parseMessage(parseFrom.getMsgs(i2));
                                if (parseMessage != null) {
                                    BusinessDBUtils.insertUserRecordDb(parseMessage);
                                }
                            }
                            BusinessDBUtils.insertUserRecordDb(miMessage);
                        }
                    } catch (InvalidProtocolBufferException e) {
                        ThrowableExtension.printStackTrace(e);
                    }
                }

                public void onDataSendFailed(int i, String str) {
                    ClientLog.v(BusinessDBUtils.TAG, "onPullOldUserMessage error");
                }
            });
        }
    }

    public static void insertUserRecordDb(@NonNull MiMessage miMessage) {
        ClientLog.v(TAG, "insertUserRecordDb");
        MessageController.getInstance().onReceiveGameMessage(1, miMessage);
        if (!isUserRecordSeqExist(miMessage.msgSeq)) {
            ClientLog.v(TAG, "insert");
            SingleMessageDao.getInstance().insert(parseGameMessage(miMessage));
            userMaxSingleChatMsgSeqExpired = true;
        }
    }

    public static void insertGroupRecord(@NonNull final MiMessage miMessage) {
        String str = miMessage.to;
        long groupMaxMsgSeq = getGroupMaxMsgSeq(str);
        long j = miMessage.msgSeq;
        if (groupMaxMsgSeq == 0 || j == groupMaxMsgSeq + 1) {
            insertGroupRecordDb(miMessage);
        } else if (j > groupMaxMsgSeq) {
            MessageController.getInstance().pullOldGroupMessage(str, j, Math.min((int) ((j - groupMaxMsgSeq) - 1), MessageController.getInstance().getSyncLimit()), new ResponseListener() {
                public void onDataSendSuccess(int i, PacketData packetData) {
                    try {
                        PullOldGroupMsgResponse parseFrom = PullOldGroupMsgResponse.parseFrom(packetData.getData());
                        if (parseFrom != null) {
                            ClientLog.v(BusinessDBUtils.TAG, "onPullOldGroupMessageResponse messageResponse=" + parseFrom.toString());
                            int msgsCount = parseFrom.getMsgsCount();
                            for (int i2 = 0; i2 < msgsCount; i2++) {
                                MiMessage parseMessage = MessageController.parseMessage(parseFrom.getMsgs(i2));
                                if (parseMessage != null) {
                                    BusinessDBUtils.insertGroupRecordDb(parseMessage);
                                }
                            }
                            BusinessDBUtils.insertGroupRecordDb(miMessage);
                        }
                    } catch (InvalidProtocolBufferException e) {
                        ThrowableExtension.printStackTrace(e);
                    }
                }

                public void onDataSendFailed(int i, String str) {
                    ClientLog.v(BusinessDBUtils.TAG, "onPullOldGroupMessage error");
                }
            });
        }
    }

    public static void insertGroupRecordDb(@NonNull MiMessage miMessage) {
        MessageController.getInstance().onReceiveGameMessage(3, miMessage);
        if (!isGroupRecordSeqExist(miMessage.to, miMessage.msgSeq)) {
            GroupMessageDao.getInstance().insert(parseGameMessage(miMessage));
        }
    }

    private static ChatMessage parseGameMessage(@NonNull MiMessage miMessage) {
        ChatMessage chatMessage = new ChatMessage();
        chatMessage.setAppid(MessageController.getInstance().getAppId());
        chatMessage.setFromGuid(miMessage.from);
        chatMessage.setToGuid(miMessage.to);
        chatMessage.setMsgSeq(Long.valueOf(miMessage.msgSeq));
        chatMessage.setMsgId(miMessage.msgId);
        chatMessage.setSentTime((long) miMessage.sendTime);
        if (miMessage.body != null) {
            chatMessage.setBody(miMessage.body.codeBody());
        }
        chatMessage.setUserId(MessageController.getInstance().getGUid());
        return chatMessage;
    }

    public static boolean isUserRecordDuplicate(String str, String str2, long j) {
        Cursor cursor = null;
        try {
            Cursor query = SingleMessageDao.getInstance().query(SingleMessageDao.getInstance().getTableColumns(), "user_id = ? and from_guid = ? and to_guid = ? and msg_id = ? ", new String[]{MessageController.getInstance().getGUid(), str, str2, String.valueOf(j)}, null);
            if (query == null || !query.moveToFirst()) {
                if (query != null) {
                    query.close();
                }
                return false;
            } else if (query == null) {
                return true;
            } else {
                query.close();
                return true;
            }
        } catch (Exception e) {
            ClientLog.e(TAG, "error in query, exception code is: " + e);
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private static boolean isUserRecordSeqExist(long j) {
        Cursor cursor = null;
        try {
            Cursor query = SingleMessageDao.getInstance().query(SingleMessageDao.getInstance().getTableColumns(), "user_id = ? and msg_seq = ? ", new String[]{MessageController.getInstance().getGUid(), String.valueOf(j)}, null);
            if (query == null || !query.moveToFirst()) {
                if (query != null) {
                    query.close();
                }
                return false;
            } else if (query == null) {
                return true;
            } else {
                query.close();
                return true;
            }
        } catch (Exception e) {
            ClientLog.e(TAG, "error in query, exception code is: " + e);
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public static boolean isGroupRecordDuplicate(String str, String str2, long j) {
        Cursor cursor = null;
        try {
            Cursor query = GroupMessageDao.getInstance().query(GroupMessageDao.getInstance().getTableColumns(), "user_id = ? and from_guid = ? and to_guid = ? and msg_id = ? ", new String[]{MessageController.getInstance().getGUid(), str, str2, String.valueOf(j)}, null);
            if (query == null || !query.moveToFirst()) {
                if (query != null) {
                    query.close();
                }
                return false;
            } else if (query == null) {
                return true;
            } else {
                query.close();
                return true;
            }
        } catch (Exception e) {
            ClientLog.e(TAG, "error in query, exception code is: " + e);
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private static boolean isGroupRecordSeqExist(String str, long j) {
        Cursor cursor = null;
        try {
            Cursor query = GroupMessageDao.getInstance().query(SingleMessageDao.getInstance().getTableColumns(), "user_id = ? and to_guid = ? and msg_seq = ? ", new String[]{MessageController.getInstance().getGUid(), str, String.valueOf(j)}, null);
            if (query == null || !query.moveToFirst()) {
                if (query != null) {
                    query.close();
                }
                return false;
            } else if (query == null) {
                return true;
            } else {
                query.close();
                return true;
            }
        } catch (Exception e) {
            ClientLog.e(TAG, "error in query, exception code is: " + e);
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x0088  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static long getSingleMaxMsgSeq() {
        /*
            boolean r0 = userMaxSingleChatMsgSeqExpired
            if (r0 != 0) goto L_0x0025
            android.util.Pair<java.lang.String, java.lang.Long> r0 = userMaxSingleChatMsgSeq
            if (r0 == 0) goto L_0x0025
            com.mi.mimsgsdk.controller.MessageController r0 = com.mi.mimsgsdk.controller.MessageController.getInstance()
            java.lang.String r0 = r0.getGUid()
            android.util.Pair<java.lang.String, java.lang.Long> r1 = userMaxSingleChatMsgSeq
            java.lang.Object r1 = r1.first
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0025
            android.util.Pair<java.lang.String, java.lang.Long> r0 = userMaxSingleChatMsgSeq
            java.lang.Object r0 = r0.second
            java.lang.Long r0 = (java.lang.Long) r0
            long r0 = r0.longValue()
        L_0x0024:
            return r0
        L_0x0025:
            r1 = 0
            com.mi.mimsgsdk.database.SingleMessageDao r0 = com.mi.mimsgsdk.database.SingleMessageDao.getInstance()     // Catch:{ Exception -> 0x0066 }
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch:{ Exception -> 0x0066 }
            r3 = 0
            java.lang.String r4 = "msg_seq"
            r2[r3] = r4     // Catch:{ Exception -> 0x0066 }
            java.lang.String r3 = "user_id = ? "
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch:{ Exception -> 0x0066 }
            r5 = 0
            com.mi.mimsgsdk.controller.MessageController r6 = com.mi.mimsgsdk.controller.MessageController.getInstance()     // Catch:{ Exception -> 0x0066 }
            java.lang.String r6 = r6.getGUid()     // Catch:{ Exception -> 0x0066 }
            r4[r5] = r6     // Catch:{ Exception -> 0x0066 }
            java.lang.String r5 = "msg_seq DESC LIMIT 1"
            android.database.Cursor r2 = r0.query(r2, r3, r4, r5)     // Catch:{ Exception -> 0x0066 }
            if (r2 == 0) goto L_0x005e
            boolean r0 = r2.moveToFirst()     // Catch:{ Exception -> 0x008f, all -> 0x008c }
            if (r0 == 0) goto L_0x005e
            r0 = 0
            long r0 = r2.getLong(r0)     // Catch:{ Exception -> 0x008f, all -> 0x008c }
            updateMaxSingleChatMsgSeq(r0)     // Catch:{ Exception -> 0x008f, all -> 0x008c }
            if (r2 == 0) goto L_0x0024
            r2.close()
            goto L_0x0024
        L_0x005e:
            if (r2 == 0) goto L_0x0063
            r2.close()
        L_0x0063:
            r0 = 0
            goto L_0x0024
        L_0x0066:
            r0 = move-exception
        L_0x0067:
            java.lang.String r2 = TAG     // Catch:{ all -> 0x0085 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0085 }
            r3.<init>()     // Catch:{ all -> 0x0085 }
            java.lang.String r4 = "error in query, exception code is: "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x0085 }
            java.lang.StringBuilder r0 = r3.append(r0)     // Catch:{ all -> 0x0085 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0085 }
            com.mi.milinkforgame.sdk.client.ClientLog.e(r2, r0)     // Catch:{ all -> 0x0085 }
            if (r1 == 0) goto L_0x0063
            r1.close()
            goto L_0x0063
        L_0x0085:
            r0 = move-exception
        L_0x0086:
            if (r1 == 0) goto L_0x008b
            r1.close()
        L_0x008b:
            throw r0
        L_0x008c:
            r0 = move-exception
            r1 = r2
            goto L_0x0086
        L_0x008f:
            r0 = move-exception
            r1 = r2
            goto L_0x0067
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.utils.BusinessDBUtils.getSingleMaxMsgSeq():long");
    }

    private static void updateMaxSingleChatMsgSeq(long j) {
        userMaxSingleChatMsgSeq = Pair.create(MessageController.getInstance().getGUid(), Long.valueOf(j));
        userMaxSingleChatMsgSeqExpired = false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0063  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static long getGroupMaxMsgSeq(java.lang.String r7) {
        /*
            r1 = 0
            com.mi.mimsgsdk.database.GroupMessageDao r0 = com.mi.mimsgsdk.database.GroupMessageDao.getInstance()     // Catch:{ Exception -> 0x0041 }
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch:{ Exception -> 0x0041 }
            r3 = 0
            java.lang.String r4 = "msg_seq"
            r2[r3] = r4     // Catch:{ Exception -> 0x0041 }
            java.lang.String r3 = "user_id = ? and to_guid = ? "
            r4 = 2
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch:{ Exception -> 0x0041 }
            r5 = 0
            com.mi.mimsgsdk.controller.MessageController r6 = com.mi.mimsgsdk.controller.MessageController.getInstance()     // Catch:{ Exception -> 0x0041 }
            java.lang.String r6 = r6.getGUid()     // Catch:{ Exception -> 0x0041 }
            r4[r5] = r6     // Catch:{ Exception -> 0x0041 }
            r5 = 1
            r4[r5] = r7     // Catch:{ Exception -> 0x0041 }
            java.lang.String r5 = "msg_seq DESC LIMIT 1"
            android.database.Cursor r2 = r0.query(r2, r3, r4, r5)     // Catch:{ Exception -> 0x0041 }
            if (r2 == 0) goto L_0x0039
            boolean r0 = r2.moveToFirst()     // Catch:{ Exception -> 0x006a, all -> 0x0067 }
            if (r0 == 0) goto L_0x0039
            r0 = 0
            long r0 = r2.getLong(r0)     // Catch:{ Exception -> 0x006a, all -> 0x0067 }
            if (r2 == 0) goto L_0x0038
            r2.close()
        L_0x0038:
            return r0
        L_0x0039:
            if (r2 == 0) goto L_0x003e
            r2.close()
        L_0x003e:
            r0 = 0
            goto L_0x0038
        L_0x0041:
            r0 = move-exception
        L_0x0042:
            java.lang.String r2 = TAG     // Catch:{ all -> 0x0060 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0060 }
            r3.<init>()     // Catch:{ all -> 0x0060 }
            java.lang.String r4 = "error in query, exception code is: "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x0060 }
            java.lang.StringBuilder r0 = r3.append(r0)     // Catch:{ all -> 0x0060 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0060 }
            com.mi.milinkforgame.sdk.client.ClientLog.e(r2, r0)     // Catch:{ all -> 0x0060 }
            if (r1 == 0) goto L_0x003e
            r1.close()
            goto L_0x003e
        L_0x0060:
            r0 = move-exception
        L_0x0061:
            if (r1 == 0) goto L_0x0066
            r1.close()
        L_0x0066:
            throw r0
        L_0x0067:
            r0 = move-exception
            r1 = r2
            goto L_0x0061
        L_0x006a:
            r0 = move-exception
            r1 = r2
            goto L_0x0042
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.utils.BusinessDBUtils.getGroupMaxMsgSeq(java.lang.String):long");
    }
}
