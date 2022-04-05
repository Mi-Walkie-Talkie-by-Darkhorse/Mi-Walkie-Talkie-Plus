.class public Lcom/liulishuo/okdownload/core/exception/NetworkPolicyException;
.super Ljava/io/IOException;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Only allows downloading this task on the wifi network type!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
