.class Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$CheckDiagnosisEnabledTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckDiagnosisEnabledTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;

.field private final b:Lcom/xiaomi/accountsdk/diagnosis/c;


# direct methods
.method private constructor <init>(Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;Lcom/xiaomi/accountsdk/diagnosis/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$CheckDiagnosisEnabledTask;->a:Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$CheckDiagnosisEnabledTask;->b:Lcom/xiaomi/accountsdk/diagnosis/c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;Lcom/xiaomi/accountsdk/diagnosis/c;Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$CheckDiagnosisEnabledTask;-><init>(Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;Lcom/xiaomi/accountsdk/diagnosis/c;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$CheckDiagnosisEnabledTask;->a:Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;->getDiagnosisDomain()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$CheckDiagnosisEnabledTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$CheckDiagnosisEnabledTask;->b:Lcom/xiaomi/accountsdk/diagnosis/c;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$CheckDiagnosisEnabledTask;->b:Lcom/xiaomi/accountsdk/diagnosis/c;

    invoke-interface {p1}, Lcom/xiaomi/accountsdk/diagnosis/c;->onLaunch()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$CheckDiagnosisEnabledTask;->b:Lcom/xiaomi/accountsdk/diagnosis/c;

    invoke-interface {p1}, Lcom/xiaomi/accountsdk/diagnosis/c;->onError()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$CheckDiagnosisEnabledTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
