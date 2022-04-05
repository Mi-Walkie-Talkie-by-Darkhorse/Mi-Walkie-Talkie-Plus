.class public Lcom/ifengyu/intercom/lite/http/entity/WrapFirmwareInfo;
.super Ljava/lang/Object;


# instance fields
.field private lite:Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

.field private seal:Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

.field private shark:Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLite()Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/http/entity/WrapFirmwareInfo;->lite:Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    return-object v0
.end method

.method public getSeal()Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/http/entity/WrapFirmwareInfo;->seal:Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    return-object v0
.end method

.method public getShark()Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/http/entity/WrapFirmwareInfo;->shark:Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    return-object v0
.end method

.method public setLite(Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/http/entity/WrapFirmwareInfo;->lite:Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    return-void
.end method

.method public setSeal(Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/http/entity/WrapFirmwareInfo;->seal:Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    return-void
.end method

.method public setShark(Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/http/entity/WrapFirmwareInfo;->shark:Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WrapFirmwareInfo{lite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/http/entity/WrapFirmwareInfo;->lite:Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/http/entity/WrapFirmwareInfo;->shark:Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/http/entity/WrapFirmwareInfo;->seal:Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
