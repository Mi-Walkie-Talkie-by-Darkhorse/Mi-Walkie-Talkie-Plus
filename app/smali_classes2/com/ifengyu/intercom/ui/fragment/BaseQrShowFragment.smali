.class public abstract Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "BaseQrShowFragment.java"


# instance fields
.field protected ivQr:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090277
    .end annotation
.end field

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field protected ngivGroupAvatar:Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090333
    .end annotation
.end field

.field rlCenterShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903c0
    .end annotation
.end field

.field protected tvBottomPrompt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904be
    .end annotation
.end field

.field protected tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904e5
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private synthetic i3()Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->g3()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic k3(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->ivQr:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic m3(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private synthetic n3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic p3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->u3()V

    return-void
.end method

.method private synthetic r3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    if-nez p3, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->t3()V

    :cond_0
    return-void
.end method

.method private t3()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->rlCenterShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->rlCenterShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->buildDrawingCache()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->rlCenterShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Mitalki"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qr_code_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 10
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 12
    :cond_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {v0, v1, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 15
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->rlCenterShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->destroyDrawingCache()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 17
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    .line 18
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 19
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->rlCenterShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->destroyDrawingCache()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 22
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const v0, 0x7f110352

    .line 26
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->y(I)V

    goto :goto_4

    :goto_2
    if-eqz v1, :cond_3

    .line 27
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 28
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->rlCenterShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->destroyDrawingCache()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 30
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 31
    :goto_3
    throw v0

    :cond_4
    :goto_4
    return-void
.end method

.method private u3()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/dialog/list/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/dialog/list/d;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110350

    .line 2
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/dialog/list/d;->F(Ljava/lang/String;)Lcom/ifengyu/intercom/dialog/list/d;

    const v1, 0x7f1100bd

    .line 3
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/dialog/list/d;->F(Ljava/lang/String;)Lcom/ifengyu/intercom/dialog/list/d;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/dialog/list/d;->I(Z)Lcom/ifengyu/intercom/dialog/list/d;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/u;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/u;-><init>(Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/dialog/list/d;->K(Lcom/ifengyu/intercom/dialog/list/d$c;)Lcom/ifengyu/intercom/dialog/list/d;

    const v1, 0x7f120100

    .line 6
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected E2()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/r;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/r;-><init>(Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/t;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/t;-><init>(Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;)V

    sget-object v2, Lcom/ifengyu/intercom/ui/fragment/q;->a:Lcom/ifengyu/intercom/ui/fragment/q;

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->h3()V

    return-object v0
.end method

.method protected abstract g3()Landroid/graphics/Bitmap;
.end method

.method protected h3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1101e8

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080151

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/p;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/p;-><init>(Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f08012a

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->n(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/s;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/s;-><init>(Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->rlCenterShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1, v2, v3}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->setRadiusAndShadow(IIF)V

    return-void
.end method

.method public synthetic j3()Lio/reactivex/ObservableSource;
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->i3()Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method

.method public synthetic l3(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->k3(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic o3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->n3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic q3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->p3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic s3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->r3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V

    return-void
.end method
