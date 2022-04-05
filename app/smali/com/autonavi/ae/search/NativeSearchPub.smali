.class Lcom/autonavi/ae/search/NativeSearchPub;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static synchronized native DbExists(I)Z
.end method

.method protected static synchronized native GetAdareaInfo(I)Lcom/autonavi/ae/search/model/GADAREAEXTRAINFO;
.end method

.method protected static synchronized native GetDataVersion(I)Ljava/lang/String;
.end method

.method protected static synchronized native GetVersion()Ljava/lang/String;
.end method

.method public static synchronized native nativeCreateSearchpub()I
.end method

.method protected static synchronized native nativeDestroy()I
.end method
