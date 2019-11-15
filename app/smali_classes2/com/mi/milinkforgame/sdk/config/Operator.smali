.class public final enum Lcom/mi/milinkforgame/sdk/config/Operator;
.super Ljava/lang/Enum;
.source "Operator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mi/milinkforgame/sdk/config/Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/milinkforgame/sdk/config/Operator;

.field public static final enum CMCC:Lcom/mi/milinkforgame/sdk/config/Operator;

.field public static final enum CMCT:Lcom/mi/milinkforgame/sdk/config/Operator;

.field public static final enum UNICOM:Lcom/mi/milinkforgame/sdk/config/Operator;

.field public static final enum UNKNOWN:Lcom/mi/milinkforgame/sdk/config/Operator;

.field public static final enum WIFI:Lcom/mi/milinkforgame/sdk/config/Operator;


# instance fields
.field private _operatorCode:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mi/milinkforgame/sdk/config/Operator;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/mi/milinkforgame/sdk/config/Operator;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/config/Operator;->UNKNOWN:Lcom/mi/milinkforgame/sdk/config/Operator;

    new-instance v0, Lcom/mi/milinkforgame/sdk/config/Operator;

    const-string v1, "CMCC"

    invoke-direct {v0, v1, v3, v3}, Lcom/mi/milinkforgame/sdk/config/Operator;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/config/Operator;->CMCC:Lcom/mi/milinkforgame/sdk/config/Operator;

    new-instance v0, Lcom/mi/milinkforgame/sdk/config/Operator;

    const-string v1, "UNICOM"

    invoke-direct {v0, v1, v4, v4}, Lcom/mi/milinkforgame/sdk/config/Operator;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/config/Operator;->UNICOM:Lcom/mi/milinkforgame/sdk/config/Operator;

    new-instance v0, Lcom/mi/milinkforgame/sdk/config/Operator;

    const-string v1, "CMCT"

    invoke-direct {v0, v1, v5, v5}, Lcom/mi/milinkforgame/sdk/config/Operator;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/config/Operator;->CMCT:Lcom/mi/milinkforgame/sdk/config/Operator;

    new-instance v0, Lcom/mi/milinkforgame/sdk/config/Operator;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v6, v6}, Lcom/mi/milinkforgame/sdk/config/Operator;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/config/Operator;->WIFI:Lcom/mi/milinkforgame/sdk/config/Operator;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mi/milinkforgame/sdk/config/Operator;

    sget-object v1, Lcom/mi/milinkforgame/sdk/config/Operator;->UNKNOWN:Lcom/mi/milinkforgame/sdk/config/Operator;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mi/milinkforgame/sdk/config/Operator;->CMCC:Lcom/mi/milinkforgame/sdk/config/Operator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mi/milinkforgame/sdk/config/Operator;->UNICOM:Lcom/mi/milinkforgame/sdk/config/Operator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mi/milinkforgame/sdk/config/Operator;->CMCT:Lcom/mi/milinkforgame/sdk/config/Operator;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mi/milinkforgame/sdk/config/Operator;->WIFI:Lcom/mi/milinkforgame/sdk/config/Operator;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mi/milinkforgame/sdk/config/Operator;->$VALUES:[Lcom/mi/milinkforgame/sdk/config/Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/mi/milinkforgame/sdk/config/Operator;->_operatorCode:B

    return-void
.end method

.method public static getProviderCode(Ljava/lang/String;)B
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->CHINA_MOBILE:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mi/milinkforgame/sdk/config/Operator;->CMCC:Lcom/mi/milinkforgame/sdk/config/Operator;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/config/Operator;->operatorCode()B

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->CHINA_UNICOM:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mi/milinkforgame/sdk/config/Operator;->UNICOM:Lcom/mi/milinkforgame/sdk/config/Operator;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/config/Operator;->operatorCode()B

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->CHINA_TELECOM:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mi/milinkforgame/sdk/config/Operator;->CMCT:Lcom/mi/milinkforgame/sdk/config/Operator;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/config/Operator;->operatorCode()B

    move-result v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/mi/milinkforgame/sdk/config/Operator;->UNKNOWN:Lcom/mi/milinkforgame/sdk/config/Operator;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/config/Operator;->operatorCode()B

    move-result v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/config/Operator;
    .locals 1

    const-class v0, Lcom/mi/milinkforgame/sdk/config/Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/config/Operator;

    return-object v0
.end method

.method public static values()[Lcom/mi/milinkforgame/sdk/config/Operator;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/config/Operator;->$VALUES:[Lcom/mi/milinkforgame/sdk/config/Operator;

    invoke-virtual {v0}, [Lcom/mi/milinkforgame/sdk/config/Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/milinkforgame/sdk/config/Operator;

    return-object v0
.end method


# virtual methods
.method equal(Lcom/mi/milinkforgame/sdk/config/Operator;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/config/Operator;->operatorCode()B

    move-result v0

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/config/Operator;->operatorCode()B

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public operatorCode()B
    .locals 1

    iget-byte v0, p0, Lcom/mi/milinkforgame/sdk/config/Operator;->_operatorCode:B

    return v0
.end method
