.class public final enum Lcom/xiaomi/xmpush/thrift/i;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/xmpush/thrift/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/xmpush/thrift/i;

.field public static final enum b:Lcom/xiaomi/xmpush/thrift/i;

.field public static final enum c:Lcom/xiaomi/xmpush/thrift/i;

.field public static final enum d:Lcom/xiaomi/xmpush/thrift/i;

.field public static final enum e:Lcom/xiaomi/xmpush/thrift/i;

.field private static final synthetic g:[Lcom/xiaomi/xmpush/thrift/i;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/xmpush/thrift/i;

    const-string v1, "Baidu"

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/xmpush/thrift/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/i;->a:Lcom/xiaomi/xmpush/thrift/i;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/i;

    const-string v1, "Tencent"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/xmpush/thrift/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/i;->b:Lcom/xiaomi/xmpush/thrift/i;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/i;

    const-string v1, "AutoNavi"

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/xmpush/thrift/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/i;->c:Lcom/xiaomi/xmpush/thrift/i;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/i;

    const-string v1, "Google"

    invoke-direct {v0, v1, v5, v5}, Lcom/xiaomi/xmpush/thrift/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/i;->d:Lcom/xiaomi/xmpush/thrift/i;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/i;

    const-string v1, "GPS"

    invoke-direct {v0, v1, v6, v6}, Lcom/xiaomi/xmpush/thrift/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/i;->e:Lcom/xiaomi/xmpush/thrift/i;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/i;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/i;->a:Lcom/xiaomi/xmpush/thrift/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/xmpush/thrift/i;->b:Lcom/xiaomi/xmpush/thrift/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/xmpush/thrift/i;->c:Lcom/xiaomi/xmpush/thrift/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/xmpush/thrift/i;->d:Lcom/xiaomi/xmpush/thrift/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/i;->e:Lcom/xiaomi/xmpush/thrift/i;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/xmpush/thrift/i;->g:[Lcom/xiaomi/xmpush/thrift/i;

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

    iput p3, p0, Lcom/xiaomi/xmpush/thrift/i;->f:I

    return-void
.end method

.method public static a(I)Lcom/xiaomi/xmpush/thrift/i;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/xiaomi/xmpush/thrift/i;->a:Lcom/xiaomi/xmpush/thrift/i;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/xiaomi/xmpush/thrift/i;->b:Lcom/xiaomi/xmpush/thrift/i;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/xiaomi/xmpush/thrift/i;->c:Lcom/xiaomi/xmpush/thrift/i;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/xiaomi/xmpush/thrift/i;->d:Lcom/xiaomi/xmpush/thrift/i;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/xiaomi/xmpush/thrift/i;->e:Lcom/xiaomi/xmpush/thrift/i;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;
    .locals 1

    const-class v0, Lcom/xiaomi/xmpush/thrift/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/i;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/i;
    .locals 1

    sget-object v0, Lcom/xiaomi/xmpush/thrift/i;->g:[Lcom/xiaomi/xmpush/thrift/i;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/i;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/xmpush/thrift/i;->f:I

    return v0
.end method
