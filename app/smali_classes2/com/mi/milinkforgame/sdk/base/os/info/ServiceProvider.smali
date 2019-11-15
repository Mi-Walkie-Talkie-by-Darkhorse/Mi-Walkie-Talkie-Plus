.class public final enum Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;
.super Ljava/lang/Enum;
.source "ServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

.field public static final enum CHINA_MOBILE:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

.field public static final enum CHINA_TELECOM:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

.field public static final enum CHINA_UNICOM:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

.field private static final IMSI_PROVIDER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NEVER_HEARD:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

.field public static final enum NONE:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    const-string v1, "NONE"

    const-string v2, "N/A"

    invoke-direct {v0, v1, v3, v2}, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    const-string v1, "NEVER_HEARD"

    const-string v2, "Unknown"

    invoke-direct {v0, v1, v4, v2}, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->NEVER_HEARD:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    const-string v1, "CHINA_MOBILE"

    const-string v2, "China Mobile"

    invoke-direct {v0, v1, v5, v2}, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->CHINA_MOBILE:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    const-string v1, "CHINA_UNICOM"

    const-string v2, "China Unicom"

    invoke-direct {v0, v1, v6, v2}, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->CHINA_UNICOM:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    const-string v1, "CHINA_TELECOM"

    const-string v2, "China Telecom"

    invoke-direct {v0, v1, v7, v2}, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->CHINA_TELECOM:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->NEVER_HEARD:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->CHINA_MOBILE:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->CHINA_UNICOM:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->CHINA_TELECOM:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    aput-object v1, v0, v7

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->$VALUES:[Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->IMSI_PROVIDER_MAP:Ljava/util/Map;

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->IMSI_PROVIDER_MAP:Ljava/util/Map;

    const-string v1, "46000"

    sget-object v2, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->CHINA_MOBILE:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->IMSI_PROVIDER_MAP:Ljava/util/Map;

    const-string v1, "46002"

    sget-object v2, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->CHINA_MOBILE:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->IMSI_PROVIDER_MAP:Ljava/util/Map;

    const-string v1, "46007"

    sget-object v2, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->CHINA_MOBILE:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->IMSI_PROVIDER_MAP:Ljava/util/Map;

    const-string v1, "46003"

    sget-object v2, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->CHINA_TELECOM:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->IMSI_PROVIDER_MAP:Ljava/util/Map;

    const-string v1, "46005"

    sget-object v2, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->CHINA_TELECOM:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->IMSI_PROVIDER_MAP:Ljava/util/Map;

    const-string v1, "46001"

    sget-object v2, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->CHINA_UNICOM:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->IMSI_PROVIDER_MAP:Ljava/util/Map;

    const-string v1, "46006"

    sget-object v2, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->CHINA_UNICOM:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->IMSI_PROVIDER_MAP:Ljava/util/Map;

    const-string v1, "46020"

    sget-object v2, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->CHINA_MOBILE:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p3}, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static fromIMSI(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;
    .locals 3

    const/4 v2, 0x5

    if-nez p0, :cond_1

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_2

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->IMSI_PROVIDER_MAP:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->NEVER_HEARD:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    goto :goto_0
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;
    .locals 1

    const-class v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    return-object v0
.end method

.method public static values()[Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->$VALUES:[Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    invoke-virtual {v0}, [Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
