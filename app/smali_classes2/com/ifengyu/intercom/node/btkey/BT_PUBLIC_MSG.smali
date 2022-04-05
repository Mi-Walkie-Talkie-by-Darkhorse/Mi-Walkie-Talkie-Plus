.class public final enum Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

.field public static final enum c:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

.field public static final enum d:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

.field public static final enum e:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

.field public static final enum f:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

.field public static final enum g:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

.field public static final enum h:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

.field public static final enum i:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

.field public static final enum j:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

.field private static final synthetic k:[Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    const/4 v1, 0x0

    const-string v2, "BT_OPEN_HF"

    const/16 v3, 0x3e8

    invoke-direct {v0, v2, v1, v3}, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->b:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    new-instance v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    const/4 v2, 0x1

    const-string v3, "BT_CLOSE_HF"

    invoke-direct {v0, v3, v2}, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->c:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    new-instance v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    const/4 v3, 0x2

    const-string v4, "BT_DISCONNECT_HF"

    invoke-direct {v0, v4, v3}, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->d:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    new-instance v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    const/4 v4, 0x3

    const-string v5, "BT_HF_CONN_STATE_QUERY"

    invoke-direct {v0, v5, v4}, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->e:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    new-instance v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    const/4 v5, 0x4

    const-string v6, "BT_HF_CONNECTED"

    invoke-direct {v0, v6, v5}, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->f:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    new-instance v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    const/4 v6, 0x5

    const-string v7, "BT_HF_DISCONNECTED"

    invoke-direct {v0, v7, v6}, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->g:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    new-instance v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    const/4 v7, 0x6

    const-string v8, "BT_OPEN_PHONE_AUDIO"

    invoke-direct {v0, v8, v7}, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->h:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    new-instance v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    const/4 v8, 0x7

    const-string v9, "BT_CLOSE_PHONE_AUDIO"

    invoke-direct {v0, v9, v8}, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->i:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    new-instance v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    const/16 v9, 0x8

    const-string v10, "BT_HF_ACK"

    invoke-direct {v0, v10, v9}, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->j:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    sget-object v11, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->b:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    aput-object v11, v10, v1

    sget-object v1, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->c:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    aput-object v1, v10, v2

    sget-object v1, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->d:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    aput-object v1, v10, v3

    sget-object v1, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->e:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    aput-object v1, v10, v4

    sget-object v1, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->f:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    aput-object v1, v10, v5

    sget-object v1, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->g:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    aput-object v1, v10, v6

    sget-object v1, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->h:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    aput-object v1, v10, v7

    sget-object v1, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->i:Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->k:[Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-static {}, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG$a;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;-><init>(Ljava/lang/String;II)V

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

    iput p3, p0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->a:I

    add-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG$a;->a(I)I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->k:[Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/node/btkey/BT_PUBLIC_MSG;->a:I

    return v0
.end method
