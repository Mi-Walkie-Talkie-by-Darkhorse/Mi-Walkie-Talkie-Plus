.class public final enum Lcom/xiaomi/xmpush/thrift/l;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/xmpush/thrift/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/xmpush/thrift/l;

.field public static final enum b:Lcom/xiaomi/xmpush/thrift/l;

.field private static final synthetic d:[Lcom/xiaomi/xmpush/thrift/l;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/xmpush/thrift/l;

    const-string v1, "Circle"

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/xmpush/thrift/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/l;->a:Lcom/xiaomi/xmpush/thrift/l;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/l;

    const-string v1, "Polygon"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/xmpush/thrift/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/l;->b:Lcom/xiaomi/xmpush/thrift/l;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/l;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/l;->a:Lcom/xiaomi/xmpush/thrift/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/xmpush/thrift/l;->b:Lcom/xiaomi/xmpush/thrift/l;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/xmpush/thrift/l;->d:[Lcom/xiaomi/xmpush/thrift/l;

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

    iput p3, p0, Lcom/xiaomi/xmpush/thrift/l;->c:I

    return-void
.end method

.method public static a(I)Lcom/xiaomi/xmpush/thrift/l;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/xiaomi/xmpush/thrift/l;->a:Lcom/xiaomi/xmpush/thrift/l;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/xiaomi/xmpush/thrift/l;->b:Lcom/xiaomi/xmpush/thrift/l;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/l;
    .locals 1

    const-class v0, Lcom/xiaomi/xmpush/thrift/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/l;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/l;
    .locals 1

    sget-object v0, Lcom/xiaomi/xmpush/thrift/l;->d:[Lcom/xiaomi/xmpush/thrift/l;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/l;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/xmpush/thrift/l;->c:I

    return v0
.end method
