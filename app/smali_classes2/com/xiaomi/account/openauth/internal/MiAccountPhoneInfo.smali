.class public Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo;
.super Ljava/lang/Object;
.source "MiAccountPhoneInfo.java"

# interfaces
.implements Lcom/xiaomi/account/auth/PhoneInfo;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPhoneNumKeeper:Lcom/xiaomi/phonenum/PhoneNumKeeper;

.field private timeOutMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MiAccountPhoneInfo"

    .line 2
    iput-object v0, p0, Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x7d0

    .line 3
    iput-wide v0, p0, Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo;->timeOutMs:J

    .line 4
    iput-object p1, p0, Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo;->mContext:Landroid/content/Context;

    .line 5
    iput-wide p2, p0, Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo;->timeOutMs:J

    .line 6
    new-instance p1, Lcom/xiaomi/phonenum/PhoneNumKeeperFactory;

    invoke-direct {p1}, Lcom/xiaomi/phonenum/PhoneNumKeeperFactory;-><init>()V

    iget-object p2, p0, Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo;->mContext:Landroid/content/Context;

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/phonenum/PhoneNumKeeperFactory;->createPhoneNumKeeper(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/phonenum/PhoneNumKeeper;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo;->mPhoneNumKeeper:Lcom/xiaomi/phonenum/PhoneNumKeeper;

    .line 7
    new-instance p2, Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo$1;

    invoke-direct {p2, p0}, Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo$1;-><init>(Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo;)V

    invoke-virtual {p1, p2}, Lcom/xiaomi/phonenum/PhoneNumKeeper;->setUp(Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;)V

    return-void
.end method


# virtual methods
.method public blokingGetPhoneInfo(I)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo;->mPhoneNumKeeper:Lcom/xiaomi/phonenum/PhoneNumKeeper;

    invoke-virtual {v1, p1}, Lcom/xiaomi/phonenum/PhoneNumKeeper;->obtainPhoneNum(I)Ljava/util/concurrent/Future;

    move-result-object p1

    iget-wide v1, p0, Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo;->timeOutMs:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/phonenum/bean/PhoneNum;

    if-eqz p1, :cond_0

    .line 3
    iget v1, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->errorCode:I

    if-nez v1, :cond_0

    const-string v1, "activatorToken"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activatorToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hash"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hash="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->numberHash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "operator"

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->copywriter:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaomi/account/utils/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "operatorLink"

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operatorLink="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->operatorLink:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blokingGetPhoneInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-object v0
.end method
