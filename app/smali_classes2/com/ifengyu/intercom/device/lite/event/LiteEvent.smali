.class public final enum Lcom/ifengyu/intercom/device/lite/event/LiteEvent;
.super Ljava/lang/Enum;
.source "LiteEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/device/lite/event/LiteEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

.field public static final enum HAVE_NEW_UPDATE:Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

.field public static final enum IMPORTED:Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

.field public static final enum UPGRADE_SUCCESS:Lcom/ifengyu/intercom/device/lite/event/LiteEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    const-string v1, "IMPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;->IMPORTED:Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    const-string v3, "HAVE_NEW_UPDATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;->HAVE_NEW_UPDATE:Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    .line 3
    new-instance v3, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    const-string v5, "UPGRADE_SUCCESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;->UPGRADE_SUCCESS:Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;->$VALUES:[Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/device/lite/event/LiteEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/device/lite/event/LiteEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;->$VALUES:[Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/device/lite/event/LiteEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    return-object v0
.end method
