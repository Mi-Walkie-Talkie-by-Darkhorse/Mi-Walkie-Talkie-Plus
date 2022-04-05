.class Lcom/github/mikephil/charting/charts/BarLineChartBase$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/mikephil/charting/charts/BarLineChartBase;->setViewPortOffsets(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/github/mikephil/charting/charts/BarLineChartBase;


# direct methods
.method constructor <init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase$a;->e:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase$a;->a:F

    iput p3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase$a;->b:F

    iput p4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase$a;->c:F

    iput p5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase$a;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase$a;->e:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/Chart;->t:Lb/a/a/a/g/j;

    iget v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase$a;->a:F

    iget v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase$a;->b:F

    iget v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase$a;->c:F

    iget v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase$a;->d:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/a/a/g/j;->a(FFFF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase$a;->e:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->z()V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase$a;->e:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->A()V

    return-void
.end method
