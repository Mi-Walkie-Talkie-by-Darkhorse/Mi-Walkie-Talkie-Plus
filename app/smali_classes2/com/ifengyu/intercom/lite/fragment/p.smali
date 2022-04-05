.class public final synthetic Lcom/ifengyu/intercom/lite/fragment/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ifengyu/intercom/lite/base/recycler/c$a;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/p;->a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/p;->a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    check-cast p3, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->a(Landroid/view/View;ILcom/ifengyu/intercom/lite/models/ConfigFileModel;)V

    return-void
.end method
