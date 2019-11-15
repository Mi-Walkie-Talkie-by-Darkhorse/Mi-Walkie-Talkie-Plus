.class Lcom/squareup/otto/b$a;
.super Ljava/lang/Object;
.source "Bus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/otto/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lcom/squareup/otto/d;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/squareup/otto/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/otto/b$a;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/squareup/otto/b$a;->b:Lcom/squareup/otto/d;

    return-void
.end method
