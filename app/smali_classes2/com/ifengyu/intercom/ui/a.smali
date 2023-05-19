.class public final synthetic Lcom/ifengyu/intercom/ui/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/MainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/MainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/a;->a:Lcom/ifengyu/intercom/ui/MainFragment;

    return-void
.end method


# virtual methods
.method public final onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/a;->a:Lcom/ifengyu/intercom/ui/MainFragment;

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/intercom/ui/MainFragment;->l3(Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method
