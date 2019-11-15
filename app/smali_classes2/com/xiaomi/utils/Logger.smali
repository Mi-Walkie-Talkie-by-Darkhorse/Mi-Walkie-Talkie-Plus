.class public Lcom/xiaomi/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native Log(Ljava/lang/String;I)V
.end method

.method public static LogD(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/utils/Logger;->Log(Ljava/lang/String;I)V

    return-void
.end method

.method public static LogE(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/xiaomi/utils/Logger;->Log(Ljava/lang/String;I)V

    return-void
.end method

.method public static LogI(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/xiaomi/utils/Logger;->Log(Ljava/lang/String;I)V

    return-void
.end method

.method public static LogW(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/xiaomi/utils/Logger;->Log(Ljava/lang/String;I)V

    return-void
.end method
