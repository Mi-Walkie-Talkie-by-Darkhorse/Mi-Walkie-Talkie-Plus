.class public Lcom/xiaomi/push/fb$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field a:J

.field a:Ljava/lang/String;

.field a:Z

.field b:I

.field b:J

.field b:Ljava/lang/String;

.field b:Z

.field c:I

.field c:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/fb$a;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/fb$a;->a:I

    const-wide/32 v0, 0x33450

    iput-wide v0, p0, Lcom/xiaomi/push/fb$a;->a:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/fb$a;->b:I

    iput v0, p0, Lcom/xiaomi/push/fb$a;->c:I

    iput-boolean v0, p0, Lcom/xiaomi/push/fb$a;->a:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/xiaomi/push/fb$a;->b:J

    iput-boolean v0, p0, Lcom/xiaomi/push/fb$a;->b:Z

    iput-wide v1, p0, Lcom/xiaomi/push/fb$a;->c:J

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    new-instance v0, Lcom/xiaomi/push/fb$a;

    invoke-direct {v0}, Lcom/xiaomi/push/fb$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/fb$a;->a(Lcom/xiaomi/push/fb$a;)V

    return-void
.end method

.method a(Lcom/xiaomi/push/fb$a;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/fb$a;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/xiaomi/push/fb$a;->b:Ljava/lang/String;

    iget v0, p0, Lcom/xiaomi/push/fb$a;->a:I

    iput v0, p1, Lcom/xiaomi/push/fb$a;->a:I

    iget-wide v0, p0, Lcom/xiaomi/push/fb$a;->a:J

    iput-wide v0, p1, Lcom/xiaomi/push/fb$a;->a:J

    iget v0, p0, Lcom/xiaomi/push/fb$a;->b:I

    iput v0, p1, Lcom/xiaomi/push/fb$a;->b:I

    iget v0, p0, Lcom/xiaomi/push/fb$a;->c:I

    iput v0, p1, Lcom/xiaomi/push/fb$a;->c:I

    iget-boolean v0, p0, Lcom/xiaomi/push/fb$a;->a:Z

    iput-boolean v0, p1, Lcom/xiaomi/push/fb$a;->a:Z

    iget-wide v0, p0, Lcom/xiaomi/push/fb$a;->b:J

    iput-wide v0, p1, Lcom/xiaomi/push/fb$a;->b:J

    iget-boolean v0, p0, Lcom/xiaomi/push/fb$a;->b:Z

    iput-boolean v0, p1, Lcom/xiaomi/push/fb$a;->b:Z

    iget-wide v0, p0, Lcom/xiaomi/push/fb$a;->c:J

    iput-wide v0, p1, Lcom/xiaomi/push/fb$a;->c:J

    return-void
.end method
