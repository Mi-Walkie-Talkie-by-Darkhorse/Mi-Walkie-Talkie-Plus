.class public final Lcom/shanlitech/et/hal/audio/CMAudioRecord;
.super Ljava/lang/Object;
.source "CMAudioRecord.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CMAudio"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read([B)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "read.buffer.length : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMAudio"

    invoke-static {v1, v0}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Account;->getAudioRecorder()Lcom/shanlitech/et/core/sl/hal/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/shanlitech/et/core/sl/hal/a;->read([B)I

    move-result p0

    return p0
.end method

.method public static startRecord()I
    .locals 2

    const-string v0, "CMAudio"

    const-string v1, "startRecord"

    .line 1
    invoke-static {v0, v1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Account;->getAudioRecorder()Lcom/shanlitech/et/core/sl/hal/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/shanlitech/et/core/sl/hal/a;->a()I

    move-result v0

    return v0
.end method

.method public static stopRecord()I
    .locals 2

    const-string v0, "CMAudio"

    const-string v1, "stopRecord"

    .line 1
    invoke-static {v0, v1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Account;->getAudioRecorder()Lcom/shanlitech/et/core/sl/hal/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/shanlitech/et/core/sl/hal/a;->b()I

    move-result v0

    return v0
.end method
