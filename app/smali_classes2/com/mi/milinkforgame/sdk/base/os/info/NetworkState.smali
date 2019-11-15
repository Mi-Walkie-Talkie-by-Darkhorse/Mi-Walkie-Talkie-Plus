.class public Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;
.super Ljava/lang/Object;
.source "NetworkState.java"


# static fields
.field private static final NETWORK_CLASS_2_G:I = 0x1

.field private static final NETWORK_CLASS_3_G:I = 0x2

.field private static final NETWORK_CLASS_4_G:I = 0x3

.field private static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field private static final NETWORK_TYPE_1xRTT:I = 0x7

.field private static final NETWORK_TYPE_CDMA:I = 0x4

.field private static final NETWORK_TYPE_EDGE:I = 0x2

.field private static final NETWORK_TYPE_EHRPD:I = 0xe

.field private static final NETWORK_TYPE_EVDO_0:I = 0x5

.field private static final NETWORK_TYPE_EVDO_A:I = 0x6

.field private static final NETWORK_TYPE_EVDO_B:I = 0xc

.field private static final NETWORK_TYPE_GPRS:I = 0x1

.field private static final NETWORK_TYPE_HSDPA:I = 0x8

.field private static final NETWORK_TYPE_HSPA:I = 0xa

.field private static final NETWORK_TYPE_HSPAP:I = 0xf

.field private static final NETWORK_TYPE_HSUPA:I = 0x9

.field private static final NETWORK_TYPE_IDEN:I = 0xb

.field private static final NETWORK_TYPE_LTE:I = 0xd

.field private static final NETWORK_TYPE_UMTS:I = 0x3

.field private static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field private static final NETWORK_TYPE_WIFI:I = -0x1

.field private static final NONE:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;


# instance fields
.field private accessPoint:Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;

.field private apnName:Ljava/lang/String;

.field private apnType:I

.field private available:Z

.field private connected:Z

.field private moreInfo:Landroid/net/NetworkInfo;

.field private type:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;

    sget-object v4, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;-><init>(ZLjava/lang/String;Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->connected:Z

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->available:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->apnName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->apnType:I

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->type:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->accessPoint:Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;

    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->connected:Z

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->available:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->apnName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->apnType:I

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->type:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->accessPoint:Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->setConnected(Z)V

    invoke-virtual {p0, p2}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->setApnName(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->setAccessPoint(Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;)V

    invoke-virtual {p0, p4}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->setType(Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;)V

    return-void
.end method

.method public static fromNetworkInfo(Landroid/net/NetworkInfo;)Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;
    .locals 3

    const/4 v2, -0x1

    if-nez p0, :cond_0

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    invoke-direct {v1}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;-><init>()V

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->setAvailable(Z)V

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->setConnected(Z)V

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->setApnName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->getApnName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;->forName(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->setAccessPoint(Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;)V

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->OTHERS:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->setType(Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;)V

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->setApnType(I)V

    :goto_1
    invoke-virtual {v1, p0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->setMoreInfo(Landroid/net/NetworkInfo;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->WIFI:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->setType(Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;)V

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->setApnType(I)V

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->ETHERNET:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->setType(Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;)V

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->setApnType(I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->is3GMobileType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->MOBILE_3G:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->setType(Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;)V

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->setApnType(I)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->MOBILE_2G:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getNetworkClass(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static is3GMobileType(I)Z
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static is4GMobileType(I)Z
    .locals 2

    invoke-static {p0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->getNetworkClass(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    :goto_0
    return v1

    :cond_0
    instance-of v0, p1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->isConnected()Z

    move-result v0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->isConnected()Z

    move-result v3

    if-ne v0, v3, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->getType()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->getType()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->getApnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getAccessPoint()Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->accessPoint:Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;

    return-object v0
.end method

.method public getApnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->apnName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->apnName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApnType()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->apnType:I

    return v0
.end method

.method public getMoreInfo()Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->moreInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getType()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->type:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->available:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->connected:Z

    return v0
.end method

.method public setAccessPoint(Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->accessPoint:Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;

    return-void
.end method

.method public setApnName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->apnName:Ljava/lang/String;

    return-void
.end method

.method public setApnType(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->apnType:I

    return-void
.end method

.method public setAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->available:Z

    return-void
.end method

.method public setConnected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->connected:Z

    return-void
.end method

.method public setMoreInfo(Landroid/net/NetworkInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->moreInfo:Landroid/net/NetworkInfo;

    return-void
.end method

.method public setType(Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->type:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkState [connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->connected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apnName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->apnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->type:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->accessPoint:Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
