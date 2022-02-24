.class public final enum Lcom/ifengyu/intercom/lite/event/LiteEvent;
.super Ljava/lang/Enum;
.source "LiteEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/lite/event/LiteEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ifengyu/intercom/lite/event/LiteEvent;

.field public static final enum b:Lcom/ifengyu/intercom/lite/event/LiteEvent;

.field private static final synthetic c:[Lcom/ifengyu/intercom/lite/event/LiteEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/lite/event/LiteEvent;

    const/4 v1, 0x0

    const-string v2, "IMPORTED"

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/lite/event/LiteEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/lite/event/LiteEvent;->a:Lcom/ifengyu/intercom/lite/event/LiteEvent;

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/lite/event/LiteEvent;

    const/4 v2, 0x1

    const-string v3, "UPGRADE_SUCCESS"

    invoke-direct {v0, v3, v2}, Lcom/ifengyu/intercom/lite/event/LiteEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/lite/event/LiteEvent;->b:Lcom/ifengyu/intercom/lite/event/LiteEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ifengyu/intercom/lite/event/LiteEvent;

    .line 3
    sget-object v4, Lcom/ifengyu/intercom/lite/event/LiteEvent;->a:Lcom/ifengyu/intercom/lite/event/LiteEvent;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/ifengyu/intercom/lite/event/LiteEvent;->c:[Lcom/ifengyu/intercom/lite/event/LiteEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/event/LiteEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/lite/event/LiteEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/lite/event/LiteEvent;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/lite/event/LiteEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/lite/event/LiteEvent;->c:[Lcom/ifengyu/intercom/lite/event/LiteEvent;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/lite/event/LiteEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/lite/event/LiteEvent;

    return-object v0
.end method
