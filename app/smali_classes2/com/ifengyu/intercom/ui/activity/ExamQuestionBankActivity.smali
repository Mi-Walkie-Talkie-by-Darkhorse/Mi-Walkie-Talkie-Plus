.class public Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;
.super Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;
.source "ExamQuestionBankActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private j:Landroid/webkit/WebView;

.field private k:Landroid/webkit/WebSettings;

.field private l:Landroid/widget/ImageView;

.field private m:Ljava/io/File;

.field private n:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;-><init>()V

    return-void
.end method

.method private F(Ljava/io/File;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "A\u7c7b\u4e1a\u4f59\u65e0\u7ebf\u7535\u53f0\u64cd\u4f5c\u6280\u672f\u80fd\u529b\u9a8c\u8bc1\u9898\u5e931_0.pdf"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 4
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_0
    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 6
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 9
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public G()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->j:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarSize(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHapticFeedbackEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->k:Landroid/webkit/WebSettings;

    const-string v2, "utf-8"

    .line 7
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->k:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->k:Landroid/webkit/WebSettings;

    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->k:Landroid/webkit/WebSettings;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 19
    invoke-static {}, Lcom/ifengyu/intercom/p/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "application/pdf"

    const/high16 v1, 0x10000000

    const-string v2, "android.intent.category.DEFAULT"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const p1, 0x7f0c0083

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09041e

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090355

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->n:Landroid/widget/PopupWindow;

    const v1, 0x7f12000e

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->n:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->n:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 10
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 11
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 12
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 14
    invoke-static {p0}, Lcom/ifengyu/intercom/g;->c(Landroid/app/Activity;)V

    .line 15
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->n:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v2, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 16
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 17
    :sswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->m:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->m:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->F(Ljava/io/File;)V

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->n:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 20
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.SEND"

    .line 21
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->m:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v0, 0x7f1103a7

    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 27
    :sswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->m:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 28
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->m:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->F(Ljava/io/File;)V

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->n:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 30
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    .line 31
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->m:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f1102f5

    .line 35
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090355 -> :sswitch_3
        0x7f09041e -> :sswitch_2
        0x7f09048e -> :sswitch_1
        0x7f09048f -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0024

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->setContentView(I)V

    const p1, 0x7f090545

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->j:Landroid/webkit/WebView;

    const p1, 0x7f09048e

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09048f

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->l:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->l:Landroid/widget/ImageView;

    const v0, 0x7f08015a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 p1, 0x41a80000    # 21.0f

    .line 8
    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result p1

    float-to-int p1, p1

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090491

    .line 11
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f11032f

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->G()V

    .line 14
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->j:Landroid/webkit/WebView;

    const-string v0, "file:///android_asset/A\u7c7b\u4e1a\u4f59\u65e0\u7ebf\u7535\u53f0\u64cd\u4f5c\u6280\u672f\u80fd\u529b\u9a8c\u8bc1\u9898\u5e931_0.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/library/utils/s;->e()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "A\u7c7b\u4e1a\u4f59\u65e0\u7ebf\u7535\u53f0\u64cd\u4f5c\u6280\u672f\u80fd\u529b\u9a8c\u8bc1\u9898\u5e931_0.pdf"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->m:Ljava/io/File;

    return-void
.end method
