.class final Landroid/support/v4/app/FragmentTransitionCompat21$3;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentTransitionCompat21;->setNameOverridesOptimized(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$inNames:Ljava/util/ArrayList;

.field final synthetic val$numSharedElements:I

.field final synthetic val$outNames:Ljava/util/ArrayList;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;

.field final synthetic val$sharedElementsOut:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$numSharedElements:I

    iput-object p2, p0, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p3, p0, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$inNames:Ljava/util/ArrayList;

    iput-object p4, p0, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$sharedElementsOut:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$outNames:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$numSharedElements:I

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$inNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$sharedElementsOut:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$outNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method
