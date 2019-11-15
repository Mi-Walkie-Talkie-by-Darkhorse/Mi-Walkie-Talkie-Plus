.class public Lcom/xiaomi/push/service/ai$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:J


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/ai$b;->a:Landroid/graphics/Bitmap;

    iput-wide p2, p0, Lcom/xiaomi/push/service/ai$b;->b:J

    return-void
.end method
