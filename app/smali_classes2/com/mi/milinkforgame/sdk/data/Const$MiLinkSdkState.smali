.class public final enum Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;
.super Ljava/lang/Enum;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/data/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MiLinkSdkState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

.field public static final enum Connected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

.field public static final enum Connecting:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

.field public static final enum Disconnected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

.field public static final enum Logined:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

.field public static final enum Logining:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    const-string v1, "Disconnected"

    invoke-direct {v0, v1, v2}, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Disconnected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    new-instance v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    const-string v1, "Connecting"

    invoke-direct {v0, v1, v3}, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Connecting:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    new-instance v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    const-string v1, "Connected"

    invoke-direct {v0, v1, v4}, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Connected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    new-instance v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    const-string v1, "Logining"

    invoke-direct {v0, v1, v5}, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Logining:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    new-instance v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    const-string v1, "Logined"

    invoke-direct {v0, v1, v6}, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Logined:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    sget-object v1, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Disconnected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Connecting:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Connected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Logining:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Logined:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->$VALUES:[Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;
    .locals 1

    const-class v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    return-object v0
.end method

.method public static values()[Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->$VALUES:[Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-virtual {v0}, [Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    return-object v0
.end method
