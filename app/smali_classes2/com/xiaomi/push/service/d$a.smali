.class Lcom/xiaomi/push/service/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final a:J

.field public final a:Ljava/lang/String;

.field public final a:[Landroid/app/Notification$Action;


# direct methods
.method constructor <init>(Ljava/lang/String;JI[Landroid/app/Notification$Action;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/d$a;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xiaomi/push/service/d$a;->a:J

    iput p4, p0, Lcom/xiaomi/push/service/d$a;->a:I

    iput-object p5, p0, Lcom/xiaomi/push/service/d$a;->a:[Landroid/app/Notification$Action;

    return-void
.end method
