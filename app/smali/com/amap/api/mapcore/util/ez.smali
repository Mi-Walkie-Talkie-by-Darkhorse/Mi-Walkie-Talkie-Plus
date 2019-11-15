.class public Lcom/amap/api/mapcore/util/ez;
.super Lcom/amap/api/mapcore/util/fa;
.source "BottomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/fa;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/mapcore/util/ez;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ez;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ff;->a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ez;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ez;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->b:Landroid/view/View;

    new-instance v1, Lcom/amap/api/mapcore/util/ez$1;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/ez$1;-><init>(Lcom/amap/api/mapcore/util/ez;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->b:Landroid/view/View;

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ez;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->b:Landroid/view/View;

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ez;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->b:Landroid/view/View;

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ez;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->b:Landroid/view/View;

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ez;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->d:Landroid/widget/TextView;

    const-string v1, "\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    iput p1, p0, Lcom/amap/api/mapcore/util/ez;->g:I

    iput-object p2, p0, Lcom/amap/api/mapcore/util/ez;->h:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x65

    if-eq p1, v0, :cond_2

    const/16 v0, 0x66

    if-eq p1, v0, :cond_2

    const/16 v0, 0x67

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->d:Landroid/widget/TextView;

    const-string v1, "\u5f00\u59cb"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/amap/api/mapcore/util/ez;->g:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->d:Landroid/widget/TextView;

    const-string v1, "\u5f00\u59cb"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->pause()V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ez;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/amap/api/mapcore/util/ez;->g:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/amap/api/mapcore/util/ez;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/amap/api/mapcore/util/ez;->g:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/amap/api/mapcore/util/ez;->g:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/amap/api/mapcore/util/ez;->g:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->d:Landroid/widget/TextView;

    const-string v1, "\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ez;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->downloadByCityName(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ez;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->remove(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ez;->dismiss()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ez;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f070008
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
