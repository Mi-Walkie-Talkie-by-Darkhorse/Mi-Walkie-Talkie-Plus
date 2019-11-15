.class public Lcom/ifengyu/intercom/ui/widget/dialog/ac;
.super Ljava/lang/Object;
.source "UpdateApkInfoDialog.java"


# instance fields
.field a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ifengyu/intercom/update/dolphin/j;

.field private d:Landroid/app/Activity;

.field private e:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/j;Ljava/util/HashMap;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/ifengyu/intercom/update/dolphin/j;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->d:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->b:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->c:Lcom/ifengyu/intercom/update/dolphin/j;

    iput-object p4, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->e:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    iput-boolean p5, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->f:Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 2

    const-string v0, "\\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/ac;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/dialog/ac;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/widget/dialog/ac;)Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->e:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/widget/dialog/ac;)Lcom/ifengyu/intercom/update/dolphin/j;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->c:Lcom/ifengyu/intercom/update/dolphin/j;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    const v1, 0x7f0900c7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f090244

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/ac$1;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/ac;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f0900d7

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f040070

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a()Landroid/view/View;

    move-result-object v1

    const v0, 0x7f1001d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f1001d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    const v4, 0x7f090030

    invoke-virtual {v3, v4}, Lcom/ifengyu/intercom/MiTalkiApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff1a<font color=#00BFFF>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->b:Ljava/util/HashMap;

    const-string v4, "versionName"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</color>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->b:Ljava/util/HashMap;

    const-string v2, "info"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->a(Ljava/lang/String;Landroid/widget/TextView;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    return-void
.end method
