.class Lcom/just/agentweb/UrlLoaderImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/UrlLoaderImpl;->safeReload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/UrlLoaderImpl;


# direct methods
.method constructor <init>(Lcom/just/agentweb/UrlLoaderImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/UrlLoaderImpl$2;->this$0:Lcom/just/agentweb/UrlLoaderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/just/agentweb/UrlLoaderImpl$2;->this$0:Lcom/just/agentweb/UrlLoaderImpl;

    invoke-virtual {v0}, Lcom/just/agentweb/UrlLoaderImpl;->reload()V

    return-void
.end method
