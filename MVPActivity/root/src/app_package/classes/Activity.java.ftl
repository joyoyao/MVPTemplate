package ${packageName};

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;

import cc.mocation.app.R;
import ${packageName}.view.${viewClass};
import cc.mocation.app.module.base.MvpActivity;
import cc.mocation.app.presenter.loader.PresenterFactory;
import ${packageName}.presenter.${presenterClass};
import cc.mocation.app.injection.components.AppComponent;
import ${packageName}.injection.${moduleClass};
import ${packageName}.injection.Dagger${componentClass};

import javax.inject.Inject;

public final class ${activityClass} extends MvpActivity<${presenterClass}, ${viewClass}> implements ${viewClass}
{
    // Your presenter is available using the mPresenter variable

    @Inject
    PresenterFactory<${presenterClass}> mPresenterFactory;

    public static void start(Activity activity) {
        Intent intent = new Intent(activity, ${activityClass}.class);
        activity.startActivity(intent);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});

        // Your code here
        // Do not call mPresenter from here, it will be null! Wait for onStart or onPostCreate.
    }

    @Override
    protected void setupComponent(@NonNull AppComponent parentComponent) 
    {
        Dagger${componentClass}.builder()
            .appComponent(parentComponent)
            .${moduleClass?uncap_first}(new ${moduleClass}())
            .build()
            .inject(this);
    }

    @NonNull
    @Override
    protected PresenterFactory<${presenterClass}> getPresenterFactory()
    {
        return mPresenterFactory;
    }
}
