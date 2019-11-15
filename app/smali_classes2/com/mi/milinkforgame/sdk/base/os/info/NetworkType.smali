.class public final enum Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

.field public static final enum ETHERNET:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

.field public static final enum MOBILE_2G:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

.field public static final enum MOBILE_3G:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

.field public static final enum NONE:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

.field public static final enum OTHERS:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

.field public static final enum WIFI:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;


# instance fields
.field private available:Z

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    const-string v1, "NONE"

    const-string v2, "None"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    const-string v1, "WIFI"

    const-string v2, "Wifi"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->WIFI:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    const-string v1, "MOBILE_2G"

    const-string v2, "2G"

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->MOBILE_2G:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    const-string v1, "MOBILE_3G"

    const-string v2, "3G"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->MOBILE_3G:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    const-string v1, "ETHERNET"

    const-string v2, "Ethernet"

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->ETHERNET:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    const-string v1, "OTHERS"

    const/4 v2, 0x5

    const-string v3, "Other"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->OTHERS:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->WIFI:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->MOBILE_2G:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->MOBILE_3G:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->ETHERNET:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->OTHERS:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->$VALUES:[Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p3}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->setAvailable(Z)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;
    .locals 1

    const-class v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->$VALUES:[Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    invoke-virtual {v0}, [Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->available:Z

    return v0
.end method

.method public setAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->available:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->name:Ljava/lang/String;

    return-void
.end method
