.class Lcom/mi/mimsgsdk/utils/DiskLruCache$InvalidKeyException;
.super Ljava/lang/Exception;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/utils/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidKeyException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/utils/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/utils/DiskLruCache;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/utils/DiskLruCache$InvalidKeyException;->this$0:Lcom/mi/mimsgsdk/utils/DiskLruCache;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
