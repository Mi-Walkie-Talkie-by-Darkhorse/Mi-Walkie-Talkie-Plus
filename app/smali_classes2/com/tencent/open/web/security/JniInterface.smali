.class public Lcom/tencent/open/web/security/JniInterface;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native BackSpaceChar(ZI)Z
.end method

.method public static native clearAllPWD()Z
.end method

.method public static native getPWDKeyToMD5(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native insetTextToArray(ILjava/lang/String;I)Z
.end method
