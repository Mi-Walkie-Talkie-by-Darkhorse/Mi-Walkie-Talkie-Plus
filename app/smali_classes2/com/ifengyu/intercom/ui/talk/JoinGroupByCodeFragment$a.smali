.class Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment$a;
.super Ljava/lang/Object;
.source "JoinGroupByCodeFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->l3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment$a;->a:Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment$a;->a:Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->g3(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;Ljava/lang/String;)V

    return-void
.end method
