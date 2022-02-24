.class Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$3;->onReadLog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$3;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$3$1;->a:Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$3$1;->a:Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$3;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity$3;->a:Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;->c(Lcom/xiaomi/accountsdk/diagnosis/ui/PassportDiagnosisActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method
