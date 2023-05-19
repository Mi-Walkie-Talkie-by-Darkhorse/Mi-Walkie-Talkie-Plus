.class public Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLog;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/diagnosis/d;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/diagnosis/d;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLog;->a:Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLog;->a:Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;

    return-object v0
.end method

.method public static set(Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLog;->a:Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;

    return-void
.end method
