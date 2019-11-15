.class public final enum Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;
.super Ljava/lang/Enum;
.source "MonitorData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/conferencemanager/Model/MonitorData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

.field public static final enum CONF_INIT:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

.field public static final enum CRASH:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

.field public static final enum P2P_INIT:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

.field public static final enum RUN_HORSE:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    const-string v1, "RUN_HORSE"

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->RUN_HORSE:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    new-instance v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    const-string v1, "P2P_INIT"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->P2P_INIT:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    new-instance v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    const-string v1, "CONF_INIT"

    invoke-direct {v0, v1, v3, v4}, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->CONF_INIT:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    new-instance v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    const-string v1, "CRASH"

    invoke-direct {v0, v1, v4, v6}, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->CRASH:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    new-array v0, v6, [Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    sget-object v1, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->RUN_HORSE:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->P2P_INIT:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->CONF_INIT:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->CRASH:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->$VALUES:[Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->type:I

    return-void
.end method

.method public static valueOf(I)Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->RUN_HORSE:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->P2P_INIT:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->CONF_INIT:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->CRASH:Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;
    .locals 1

    const-class v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;
    .locals 1

    sget-object v0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->$VALUES:[Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    invoke-virtual {v0}, [Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->type:I

    return v0
.end method
