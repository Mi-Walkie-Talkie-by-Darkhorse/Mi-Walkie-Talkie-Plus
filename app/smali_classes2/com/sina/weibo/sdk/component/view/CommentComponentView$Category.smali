.class public final enum Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;
.super Ljava/lang/Enum;
.source "CommentComponentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/component/view/CommentComponentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;

.field public static final enum b:Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;

.field private static final synthetic d:[Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;

    const-string v1, "MOVIE"

    const-string v2, "1001"

    invoke-direct {v0, v1, v3, v2}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;->a:Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;

    new-instance v0, Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;

    const-string v1, "TRAVEL"

    const-string v2, "1002"

    invoke-direct {v0, v1, v4, v2}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;->b:Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;

    sget-object v1, Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;->a:Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;->b:Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;->d:[Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;
    .locals 1

    const-class v0, Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;

    return-object v0
.end method

.method public static values()[Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;->d:[Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;

    array-length v1, v0

    new-array v2, v1, [Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;->c:Ljava/lang/String;

    return-object v0
.end method
