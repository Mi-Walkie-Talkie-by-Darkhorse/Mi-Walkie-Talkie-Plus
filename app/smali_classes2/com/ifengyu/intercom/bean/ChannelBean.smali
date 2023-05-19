.class public Lcom/ifengyu/intercom/bean/ChannelBean;
.super Ljava/lang/Object;
.source "ChannelBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FLAG_NORAML:I = 0x0

.field public static final FLAG_OPPOSITION:I = 0x1

.field public static final TYPE_CH_PRESET:I = 0x0

.field public static final TYPE_CH_PUBLIC:I = 0x1

.field public static final TYPE_CH_RADIO:I = 0x3

.field public static final TYPE_CH_RELAY:I = 0x8

.field public static final TYPE_CH_SCAN:I = 0x7

.field public static final TYPE_CH_SOS:I = 0x4

.field public static final TYPE_CH_TEAM:I = 0x6

.field public static final TYPE_CH_TEMP:I = 0x5

.field public static final TYPE_CH_USERDEFINE:I = 0x2

.field public static final TYPE_CSS_ANALOG:I = 0x3

.field public static final TYPE_CSS_DIGITAL:I = 0x2

.field public static final TYPE_CSS_NONE:I


# instance fields
.field private cssCode:I

.field private cssInvert:I

.field private cssType:I

.field private freq:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private no:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->type:I

    .line 4
    iput p2, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->no:I

    .line 5
    iput-object p3, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->freq:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->type:I

    .line 9
    iput p2, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->no:I

    .line 10
    iput-object p3, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->freq:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->name:Ljava/lang/String;

    .line 12
    iput p5, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->cssType:I

    .line 13
    iput p6, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->cssCode:I

    .line 14
    iput p7, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->cssInvert:I

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getNo()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->no:I

    .line 17
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->type:I

    .line 18
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->freq:Ljava/lang/String;

    .line 19
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getName()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    const-string v2, "GB2312"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 21
    :goto_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssType()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->cssType:I

    .line 22
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssInvert()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->cssInvert:I

    .line 23
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssCode()I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->cssCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lcom/ifengyu/intercom/bean/ChannelBean;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/ChannelBean;->getNo()I

    move-result v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/ChannelBean;->getNo()I

    move-result p1

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getCssCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->cssCode:I

    return v0
.end method

.method public getCssInvert()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->cssInvert:I

    return v0
.end method

.method public getCssType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->cssType:I

    return v0
.end method

.method public getFreq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->freq:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->no:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->type:I

    return v0
.end method

.method public setCssCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->cssCode:I

    return-void
.end method

.method public setCssInvert(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->cssInvert:I

    return-void
.end method

.method public setCssType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->cssType:I

    return-void
.end method

.method public setFreq(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->freq:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->no:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelBean{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", no="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->no:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", freq=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->freq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", cssType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->cssType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cssCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->cssCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cssInvert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/bean/ChannelBean;->cssInvert:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
