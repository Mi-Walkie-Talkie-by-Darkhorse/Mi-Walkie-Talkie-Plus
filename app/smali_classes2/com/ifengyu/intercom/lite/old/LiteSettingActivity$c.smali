.class Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$c;
.super Ljava/lang/Object;
.source "LiteSettingActivity.java"

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/q<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$c;->a:Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$c;->a:Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->b(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    .line 2
    invoke-static {p1}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$c;->a(Ljava/lang/String;)V

    return-void
.end method
