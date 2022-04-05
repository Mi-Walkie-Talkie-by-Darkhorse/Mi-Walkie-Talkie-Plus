.class public Lcom/ifengyu/intercom/ui/widget/dialog/a0;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/ifengyu/intercom/update/dolphin/j;

.field private c:Landroid/app/Activity;

.field private d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

.field e:Lcom/ifengyu/intercom/ui/widget/dialog/f;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/j;Ljava/util/HashMap;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/ifengyu/intercom/update/dolphin/j;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->c:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->a:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->b:Lcom/ifengyu/intercom/update/dolphin/j;

    iput-object p4, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    iput-boolean p5, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->f:Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 2

    const-string v0, "\\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/a0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->f:Z

    return p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/dialog/a0;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/widget/dialog/a0;)Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/widget/dialog/a0;)Lcom/ifengyu/intercom/update/dolphin/j;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->b:Lcom/ifengyu/intercom/update/dolphin/j;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->e:Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const v1, 0x7f1100f4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/a0;)V

    const v2, 0x7f110371

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const v1, 0x7f110105

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->e:Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09006c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    const v4, 0x7f110047

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff1a<font color=#00BFFF>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->a:Ljava/util/HashMap;

    const-string v4, "versionName"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</color>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->a:Ljava/util/HashMap;

    const-string v2, "info"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->a(Ljava/lang/String;Landroid/widget/TextView;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->e:Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()V

    return-void
.end method
