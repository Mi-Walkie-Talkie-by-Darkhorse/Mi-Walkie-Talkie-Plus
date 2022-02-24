.class public Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# instance fields
.field private a:Landroid/widget/ScrollView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private e:Landroid/app/ProgressDialog;

.field private volatile f:Z

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$1;-><init>(Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->f:Z

    new-instance v0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2;-><init>(Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->e:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static a()Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/diagnosis/e/a;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->f:Z

    return p0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->e:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private b()V
    .locals 3

    new-instance v0, Lcom/xiaomi/accountsdk/diagnosis/c/b;

    new-instance v1, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$3;-><init>(Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;)V

    const/16 v2, 0x200

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaomi/accountsdk/diagnosis/c/b;-><init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/diagnosis/c/b$a;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->a:Landroid/widget/ScrollView;

    return-object p0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;->get()Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$4;

    invoke-direct {v1, p0}, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;->checkStart(Lcom/xiaomi/accountsdk/diagnosis/c;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/xiaomi/accountsdk/diagnosis/R$layout;->passport_diagnosis:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lcom/xiaomi/accountsdk/diagnosis/R$id;->log_scroller:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->a:Landroid/widget/ScrollView;

    sget p1, Lcom/xiaomi/accountsdk/diagnosis/R$id;->upload_diagnosis:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->c:Landroid/view/View;

    sget p1, Lcom/xiaomi/accountsdk/diagnosis/R$id;->footer:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->b:Landroid/view/View;

    sget p1, Lcom/xiaomi/accountsdk/diagnosis/R$id;->switch_diagnosis:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->b()V

    invoke-static {}, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->a()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->a(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method
