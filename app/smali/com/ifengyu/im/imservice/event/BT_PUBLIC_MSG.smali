.class public final enum Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;
.super Ljava/lang/Enum;
.source "BT_PUBLIC_MSG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG$Counter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

.field public static final enum BT_CLOSE_HF:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

.field public static final enum BT_CLOSE_PHONE_AUDIO:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

.field public static final enum BT_DISCONNECT_HF:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

.field public static final enum BT_HF_ACK:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

.field public static final enum BT_HF_CONNECTED:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

.field public static final enum BT_HF_CONN_STATE_QUERY:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

.field public static final enum BT_HF_DISCONNECTED:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

.field public static final enum BT_OPEN_HF:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

.field public static final enum BT_OPEN_PHONE_AUDIO:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    const-string v1, "BT_OPEN_HF"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v3, v2}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_OPEN_HF:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    new-instance v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    const-string v1, "BT_CLOSE_HF"

    invoke-direct {v0, v1, v4}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_CLOSE_HF:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    new-instance v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    const-string v1, "BT_DISCONNECT_HF"

    invoke-direct {v0, v1, v5}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_DISCONNECT_HF:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    new-instance v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    const-string v1, "BT_HF_CONN_STATE_QUERY"

    invoke-direct {v0, v1, v6}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_HF_CONN_STATE_QUERY:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    new-instance v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    const-string v1, "BT_HF_CONNECTED"

    invoke-direct {v0, v1, v7}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_HF_CONNECTED:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    new-instance v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    const-string v1, "BT_HF_DISCONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_HF_DISCONNECTED:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    new-instance v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    const-string v1, "BT_OPEN_PHONE_AUDIO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_OPEN_PHONE_AUDIO:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    new-instance v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    const-string v1, "BT_CLOSE_PHONE_AUDIO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_CLOSE_PHONE_AUDIO:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    new-instance v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    const-string v1, "BT_HF_ACK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_HF_ACK:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    sget-object v1, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_OPEN_HF:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_CLOSE_HF:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_DISCONNECT_HF:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_HF_CONN_STATE_QUERY:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_HF_CONNECTED:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_HF_DISCONNECTED:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_OPEN_PHONE_AUDIO:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_CLOSE_PHONE_AUDIO:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_HF_ACK:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->$VALUES:[Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-static {}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG$Counter;->access$000()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->value:I

    add-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG$Counter;->access$002(I)I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;
    .locals 1

    const-class v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->$VALUES:[Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v0}, [Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->value:I

    return v0
.end method
