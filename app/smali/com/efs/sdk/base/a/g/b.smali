.class public final Lcom/efs/sdk/base/a/g/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/efs/sdk/base/processor/action/ILogEncryptAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decrypt(Ljava/lang/String;[B)[B
    .locals 1

    :try_start_0
    invoke-static {p2, p1}, Lcom/efs/sdk/base/a/h/c/a;->a([BLjava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "efs.base"

    const-string v0, "aes decrypt error"

    invoke-static {p2, v0, p1}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final encrypt(Ljava/lang/String;[B)[B
    .locals 1

    :try_start_0
    invoke-static {p2, p1}, Lcom/efs/sdk/base/a/h/c/a;->b([BLjava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "efs.base"

    const-string v0, "aes encrypt error"

    invoke-static {p2, v0, p1}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getDeVal()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
