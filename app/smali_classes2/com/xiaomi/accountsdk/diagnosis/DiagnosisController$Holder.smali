.class Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$Holder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static a:Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;-><init>(Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$1;)V

    sput-object v0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController$Holder;->a:Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
