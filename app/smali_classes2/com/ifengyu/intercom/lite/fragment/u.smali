.class public final synthetic Lcom/ifengyu/intercom/lite/fragment/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/q;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/u;->a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/u;->a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->b(Ljava/util/List;)V

    return-void
.end method
