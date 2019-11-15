.class public interface abstract annotation Lbutterknife/OnEditorAction;
.super Ljava/lang/Object;
.source "OnEditorAction.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lbutterknife/internal/ListenerClass;
    method = {
        .subannotation Lbutterknife/internal/ListenerMethod;
            defaultReturn = "false"
            name = "onEditorAction"
            parameters = {
                "android.widget.TextView",
                "int",
                "android.view.KeyEvent"
            }
            returnType = "boolean"
        .end subannotation
    }
    setter = "setOnEditorActionListener"
    targetType = "android.widget.TextView"
    type = "android.widget.TextView.OnEditorActionListener"
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lbutterknife/OnEditorAction;
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
