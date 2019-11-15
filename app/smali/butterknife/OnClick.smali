.class public interface abstract annotation Lbutterknife/OnClick;
.super Ljava/lang/Object;
.source "OnClick.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lbutterknife/internal/ListenerClass;
    method = {
        .subannotation Lbutterknife/internal/ListenerMethod;
            name = "doClick"
            parameters = {
                "android.view.View"
            }
        .end subannotation
    }
    setter = "setOnClickListener"
    targetType = "android.view.View"
    type = "butterknife.internal.DebouncingOnClickListener"
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lbutterknife/OnClick;
        value = {
            -0x1
        }
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()[I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end method
