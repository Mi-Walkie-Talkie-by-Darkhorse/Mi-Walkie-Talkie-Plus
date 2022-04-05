.class Lcom/github/mikephil/charting/listener/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/listener/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/listener/e;JF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/github/mikephil/charting/listener/e$a;->a:J

    iput p4, p0, Lcom/github/mikephil/charting/listener/e$a;->b:F

    return-void
.end method
