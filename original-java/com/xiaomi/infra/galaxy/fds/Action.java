package com.xiaomi.infra.galaxy.fds;

/* loaded from: classes2.dex */
public enum Action {
    GetStorageToken(false),
    ListBuckets(false),
    ListAuthorizedBuckets(false),
    PutBucket(false),
    HeadBucket(true),
    DeleteBucket(false),
    DeleteObjects(true),
    ListObjects(true),
    PutObject(true),
    PostObject(true),
    HeadObject(true),
    DeleteObject(true),
    GetObject(true),
    GetBucketMeta(true),
    GetBucketACL(true),
    PutBucketACL(true),
    DeleteBucketACL(true),
    GetObjectACL(true),
    PutObjectACL(true),
    DeleteObjectACL(true),
    GetBucketQuota(true),
    PutBucketQuota(true),
    RenameObject(true),
    GetMetrics(false),
    PutClientMetrics(false),
    GetObjectMetadata(true),
    InitMultiPartUpload(true),
    ListMultiPartUploads(true),
    CompleteMultiPartUpload(true),
    AbortMultiPartUpload(true),
    ListMultiPart(true),
    UploadPart(true),
    ListParts(true),
    GetBucketUsage(true),
    GetDeveloperInfo(false),
    GetBills(false),
    PrefetchObject(true),
    RefreshObject(true),
    PutDomainMapping(true),
    ListDomainMappings(true),
    DeleteDomainMapping(true),
    ListTrashObjects(true),
    RestoreObject(true),
    GetTimeSeriesData(true),
    GetPresignedUrl(true),
    CropImage(true),
    Unknown(false);
    
    private final boolean needThrottle;

    Action(boolean z) {
        this.needThrottle = z;
    }

    public boolean needThrottle() {
        return this.needThrottle;
    }
}
