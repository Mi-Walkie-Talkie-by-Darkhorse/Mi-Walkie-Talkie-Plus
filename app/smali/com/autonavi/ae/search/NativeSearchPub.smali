.class Lcom/autonavi/ae/search/NativeSearchPub;
.super Ljava/lang/Object;
.source "NativeSearchPub.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static synchronized native declared-synchronized DbExists(I)Z
.end method

.method protected static synchronized native declared-synchronized GetAdareaInfo(I)Lcom/autonavi/ae/search/model/GADAREAEXTRAINFO;
.end method

.method protected static synchronized native declared-synchronized GetDataVersion(I)Ljava/lang/String;
.end method

.method protected static synchronized native declared-synchronized GetVersion()Ljava/lang/String;
.end method

.method public static synchronized native declared-synchronized nativeCreateSearchpub()I
.end method

.method protected static synchronized native declared-synchronized nativeDestroy()I
.end method
