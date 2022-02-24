.class Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/accountsdk/diagnosis/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2$1;->a:Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ZLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2$1;->a:Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2;->a:Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->b(Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;Z)Z

    iget-object v0, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2$1;->a:Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2;->a:Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->b(Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2$1;->a:Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2;->a:Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->b(Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2$1;->a:Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2;->a:Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2$1;->a:Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2;

    iget-object p1, p1, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2;->a:Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;

    sget v2, Lcom/xiaomi/accountsdk/diagnosis/R$string;->diagnosis_log_sent_format:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2$1;->a:Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2;

    iget-object p1, p1, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$2;->a:Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;

    sget p2, Lcom/xiaomi/accountsdk/diagnosis/R$string;->diagnosis_log_send_failed:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget p1, Lcom/xiaomi/accountsdk/diagnosis/R$string;->ok:I

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
