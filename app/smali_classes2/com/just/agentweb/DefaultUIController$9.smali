.class Lcom/just/agentweb/DefaultUIController$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/DefaultUIController;->onJsConfirmInternal(Ljava/lang/String;Landroid/webkit/JsResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/DefaultUIController;


# direct methods
.method constructor <init>(Lcom/just/agentweb/DefaultUIController;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/DefaultUIController$9;->this$0:Lcom/just/agentweb/DefaultUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/just/agentweb/DefaultUIController$9;->this$0:Lcom/just/agentweb/DefaultUIController;

    iget-object p2, p1, Lcom/just/agentweb/DefaultUIController;->mConfirmDialog:Landroidx/appcompat/app/b;

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AbsAgentWebUIController;->toDismissDialog(Landroid/app/Dialog;)V

    iget-object p1, p0, Lcom/just/agentweb/DefaultUIController$9;->this$0:Lcom/just/agentweb/DefaultUIController;

    invoke-static {p1}, Lcom/just/agentweb/DefaultUIController;->access$000(Lcom/just/agentweb/DefaultUIController;)Landroid/webkit/JsResult;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/just/agentweb/DefaultUIController;->access$100(Lcom/just/agentweb/DefaultUIController;Landroid/webkit/JsResult;)V

    return-void
.end method
