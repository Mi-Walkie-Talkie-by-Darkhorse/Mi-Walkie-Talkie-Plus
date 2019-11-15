.class public Lcom/github/mikephil/charting/components/XAxis;
.super Lcom/github/mikephil/charting/components/a;
.source "XAxis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;
    }
.end annotation


# instance fields
.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field protected F:F

.field private G:Z

.field private H:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/github/mikephil/charting/components/a;-><init>()V

    iput v0, p0, Lcom/github/mikephil/charting/components/XAxis;->B:I

    iput v0, p0, Lcom/github/mikephil/charting/components/XAxis;->C:I

    iput v0, p0, Lcom/github/mikephil/charting/components/XAxis;->D:I

    iput v0, p0, Lcom/github/mikephil/charting/components/XAxis;->E:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/components/XAxis;->F:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/XAxis;->G:Z

    sget-object v0, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->a:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->H:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/XAxis;->x:F

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/XAxis;->G:Z

    return v0
.end method

.method public a(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/components/XAxis;->H:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    return-void
.end method

.method public y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->H:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    return-object v0
.end method

.method public z()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/XAxis;->F:F

    return v0
.end method
