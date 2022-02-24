.class Lorg/osmdroid/tileprovider/modules/SqlTileWriter$1;
.super Ljava/lang/Thread;
.source "SqlTileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/tileprovider/modules/SqlTileWriter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;


# direct methods
.method constructor <init>(Lorg/osmdroid/tileprovider/modules/SqlTileWriter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter$1;->this$0:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter$1;->this$0:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->runCleanupOperation()V

    return-void
.end method
