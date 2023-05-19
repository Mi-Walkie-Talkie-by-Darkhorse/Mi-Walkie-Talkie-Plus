.class Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$e;
.super Lcom/ifengyu/library/b/e/a;
.source "DolphinPresetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment;->j2(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment;->i2()Ljava/lang/String;

    move-result-object p1

    const-string v0, "activateDevice fail"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
