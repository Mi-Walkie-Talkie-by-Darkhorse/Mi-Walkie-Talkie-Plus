.class public Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "ExamQuestionBankActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/webkit/WebSettings;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private q:Landroid/widget/ImageView;

.field private r:Ljava/io/File;

.field private s:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const-string v0, "A\u7c7b\u4e1a\u4f59\u65e0\u7ebf\u7535\u53f0\u64cd\u4f5c\u6280\u672f\u80fd\u529b\u9a8c\u8bc1\u9898\u5e931_0.pdf"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->c:Ljava/lang/String;

    const-string v0, "A\u7c7b\u4e1a\u4f59\u65e0\u7ebf\u7535\u53f0\u64cd\u4f5c\u6280\u672f\u80fd\u529b\u9a8c\u8bc1\u9898\u5e931_0.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "A\u7c7b\u4e1a\u4f59\u65e0\u7ebf\u7535\u53f0\u64cd\u4f5c\u6280\u672f\u80fd\u529b\u9a8c\u8bc1\u9898\u5e931_0.pdf"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const/16 v0, 0x400

    new-array v3, v0, [B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public c()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarSize(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHapticFeedbackEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->b:Landroid/webkit/WebSettings;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->b:Landroid/webkit/WebSettings;

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->b:Landroid/webkit/WebSettings;

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->b:Landroid/webkit/WebSettings;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/high16 v5, 0x10000000

    const/4 v4, 0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->finish()V

    goto :goto_0

    :sswitch_1
    const v0, 0x7f04008e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100227

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100228

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->s:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->s:Landroid/widget/PopupWindow;

    const v2, 0x7f0c00b1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->s:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-static {p0}, Lcom/ifengyu/intercom/a;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->s:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->r:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->a(Ljava/io/File;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "application/pdf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->r:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v1, 0x7f0901e4

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->r:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->a(Ljava/io/File;)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->r:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f090170

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f10015b -> :sswitch_1
        0x7f100227 -> :sswitch_2
        0x7f100228 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040026

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->setContentView(I)V

    const v0, 0x7f1000dc

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->a:Landroid/webkit/WebView;

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10015b

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->q:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->q:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->q:Landroid/widget/ImageView;

    const v1, 0x7f020109

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v0, 0x41a80000    # 21.0f

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090194

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->c()V

    const-string v0, "file:///android_asset/A\u7c7b\u4e1a\u4f59\u65e0\u7ebf\u7535\u53f0\u64cd\u4f5c\u6280\u672f\u80fd\u529b\u9a8c\u8bc1\u9898\u5e931_0.html"

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mitalki"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "A\u7c7b\u4e1a\u4f59\u65e0\u7ebf\u7535\u53f0\u64cd\u4f5c\u6280\u672f\u80fd\u529b\u9a8c\u8bc1\u9898\u5e931_0.pdf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;->r:Ljava/io/File;

    return-void
.end method
