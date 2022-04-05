.class public Landroidx/constraintlayout/solver/widgets/j;
.super Landroidx/constraintlayout/solver/widgets/h;


# instance fields
.field private F0:I

.field private G0:I

.field private H0:I

.field private I0:I

.field private J0:I

.field private K0:I

.field private L0:Z

.field private M0:I

.field private N0:I

.field protected O0:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

.field P0:Landroidx/constraintlayout/solver/widgets/analyzer/b$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/h;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->F0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->G0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->H0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->I0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->J0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->K0:I

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/j;->L0:Z

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->M0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->N0:I

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/j;->O0:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/j;->P0:Landroidx/constraintlayout/solver/widgets/analyzer/b$b;

    return-void
.end method


# virtual methods
.method public I()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/h;->E0:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/h;->D0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public J()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/j;->N0:I

    return v0
.end method

.method public K()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/j;->M0:I

    return v0
.end method

.method public L()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/j;->G0:I

    return v0
.end method

.method public M()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/j;->J0:I

    return v0
.end method

.method public N()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/j;->K0:I

    return v0
.end method

.method public O()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/j;->F0:I

    return v0
.end method

.method protected P()Z
    .locals 9

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/d;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/d;->L()Landroidx/constraintlayout/solver/widgets/analyzer/b$b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/h;->E0:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/h;->D0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    instance-of v5, v3, Landroidx/constraintlayout/solver/widgets/f;

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_4

    iget v8, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    if-eq v8, v4, :cond_4

    if-ne v6, v7, :cond_4

    iget v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    if-eq v7, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v4, :cond_6

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_6
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v4, :cond_7

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_7
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/j;->O0:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iput-object v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v6, v4, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->c:I

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/j;->O0:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->d:I

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/j;->O0:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    invoke-interface {v0, v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/b$b;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/b$a;)V

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/j;->O0:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p(I)V

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/j;->O0:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h(I)V

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/j;->O0:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->g:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    return v4
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/j;->L0:Z

    return v0
.end method

.method protected a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .locals 1

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/j;->P0:Landroidx/constraintlayout/solver/widgets/analyzer/b$b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/d;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/d;->L()Landroidx/constraintlayout/solver/widgets/analyzer/b$b;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/j;->P0:Landroidx/constraintlayout/solver/widgets/analyzer/b$b;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/j;->O0:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iput-object p2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->c:I

    iput p5, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->d:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/j;->P0:Landroidx/constraintlayout/solver/widgets/analyzer/b$b;

    invoke-interface {p2, p1, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/b$b;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/b$a;)V

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/j;->O0:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->e:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p(I)V

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/j;->O0:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->f:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h(I)V

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/j;->O0:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iget-boolean p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->h:Z

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Z)V

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/j;->O0:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->g:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g(I)V

    return-void
.end method

.method public a(Landroidx/constraintlayout/solver/widgets/d;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/j;->I()V

    return-void
.end method

.method public b(IIII)V
    .locals 0

    return-void
.end method

.method public d(II)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->M0:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/j;->N0:I

    return-void
.end method

.method public d(Z)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/j;->H0:I

    if-gtz v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/j;->I0:I

    if-lez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/j;->I0:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->J0:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/j;->H0:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->K0:I

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/j;->H0:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->J0:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/j;->I0:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->K0:I

    :cond_2
    :goto_0
    return-void
.end method

.method protected e(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/j;->L0:Z

    return-void
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->F0:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->G0:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->H0:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->I0:I

    return-void
.end method

.method public t(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->G0:I

    return-void
.end method

.method public u(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->I0:I

    return-void
.end method

.method public v(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->J0:I

    return-void
.end method

.method public w(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->K0:I

    return-void
.end method

.method public x(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->H0:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->J0:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->K0:I

    return-void
.end method

.method public y(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->F0:I

    return-void
.end method
