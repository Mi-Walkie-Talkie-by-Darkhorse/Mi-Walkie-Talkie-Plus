.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/l0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/HostFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/HostFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/l0;->a:Lcom/ifengyu/intercom/ui/fragment/HostFragment;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/l0;->a:Lcom/ifengyu/intercom/ui/fragment/HostFragment;

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->k3(Landroid/widget/RadioGroup;I)V

    return-void
.end method
