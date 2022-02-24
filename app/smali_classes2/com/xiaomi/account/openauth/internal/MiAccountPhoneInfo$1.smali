.class Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo$1;
.super Ljava/lang/Object;
.source "MiAccountPhoneInfo.java"

# interfaces
.implements Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo;-><init>(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo$1;->this$0:Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetupFinished(Lcom/xiaomi/phonenum/bean/Error;)V
    .locals 0

    return-void
.end method
